import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/timer_entity.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

import 'home_imports.dart';

class HomeController {
  final ObsValue<bool> hasOrders = ObsValue<bool>.withInit(false);
  final ObsValue<bool> availableForOrdersObs = ObsValue<bool>.withInit(false);
  final ObsValue<TimerEntity> timerObs = ObsValue<TimerEntity>.withInit(TimerEntity());

  // final BaseBloc<OrdersModel?> ordersCubit = BaseBloc<OrdersModel?>();

  BaseBloc<List<OrderModel>> get assignedOrdersCubit => getIt<OrdersHelper>().assignedOrdersCubit;

  BaseBloc<OrdersList?> get ordersListCubit => getIt<OrdersHelper>().ordersListCubit;

  HomeController() {
    getUserData();
    getAllOrders(fromRemote: false);
    getAllOrders();
  }

  bool popOut = false;

  Future<void> initializeAvailableStatus(BuildContext context, {bool value = false}) async {
    bool? isAvailable = context.read<UserCubit>().state.model?.isAvailable;
    availableForOrdersObs.setValue(isAvailable ?? value);
    availableForOrdersObs.refresh();
  }

  Future<void> getAllOrders({bool fromRemote = true, bool setLoading = true}) async {
   await getIt<OrdersHelper>().getAllOrders(setLoading: setLoading,fromRemote: fromRemote);
  }

  void onPop() {
    if (popOut) {
      SystemNavigator.pop();
    } else {
      popOut = true;
      AppSnackBar.showSimpleToast(
          msg: Translate.s.back_again_to_exit,
          type: ToastType.info,
          color: AppColors.fixedColors.gray58,
          textColor: AppColors.fixedColors.white,
          gravity: ToastGravity.BOTTOM);
      Future.delayed(const Duration(seconds: 7)).then((value) => popOut = false);
    }
  }

  Future<void> navigateToSideMenu(BuildContext context) async {
    await AutoRouter.of(context).push(const ProfilePageRoute());
  }

  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }

  Future<void> updateAvailabilityStatus(BuildContext context) async {
    var userData = context.read<UserCubit>().state.model;
    var result = await getIt<HomeRepositories>().updateAvailability();
    result.when(
      isSuccess: (data) async {
        availableForOrdersObs.setValue(data!.data!.isAvailable);
        AppSnackBar.showSuccessSnackBar(data.msg ?? "", forceShow: true);
        context.read<UserCubit>().onUpdateUserData(userData?.copyWith(isAvailable: data.data?.isAvailable ?? userData.isAvailable));
        if(ordersListCubit.data == null){
          getIt<OrdersHelper>().ordersRefreshKey.currentState?.show();
        }
      },
      isError: (error) {

      },
    );
  }

  Future<void> acceptOrder(BuildContext context, OrderModel data) async {
    if (data.isAssigned) {
      final value =
          await AutoRouter.of(context).push(OrderDetailsRouteName(id: data.id, time: data.preparationMinutes));
      if (value!= null && value as int == data.id) {
        assignedOrdersCubit.data!.remove(data);
        assignedOrdersCubit.successState(assignedOrdersCubit.data);
        getIt<OrdersHelper>().saveAssignedOrders(assignedOrdersCubit.data!);
        getAllOrders();
      }
      return;
    }
    var result = await getIt<HomeRepositories>().acceptOrder(OrdersParams(id: data.id));
    result.when(
      isSuccess: (data) async {
        data!.getOrderStatus() == OrderStatusEnum.preparing;
        assignedOrdersCubit.data?.add(data);
        getIt<OrdersHelper>().saveAssignedOrders(assignedOrdersCubit.data!);
        getIt<OrdersHelper>().assignedOrdersCubit.data!.add(data);
        getIt<OrdersHelper>().assignedOrdersCubit.successState(assignedOrdersCubit.data);
        AutoRouter.of(context).push(OrderDetailsRouteName(id: data.id, time: data.preparationMinutes));
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: 'Order accepted failed'));
      },
    );
  }

  Future<void> getUserData() async {
    getIt<UserServicesHelper>().getUserData();
  }

  String getDigit(Duration duration, String unit, int index) {
    int value;
    switch (unit) {
      case 'days':
        value = duration.inDays;
        break;
      case 'hours':
        value = duration.inHours % 24;
        break;
      case 'minutes':
        value = duration.inMinutes % 60;
        break;
      case 'seconds':
        value = duration.inSeconds % 60;
        break;
      default:
        throw ArgumentError('Invalid time unit: $unit');
    }

    return value.toString().padLeft(2, '0')[index];
  }
}
