import 'dart:developer';

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

  Future<void> refreshOrders({bool fromRemote = true, bool setLoading = true}) async {
    await getIt<OrdersHelper>().getAllOrders(setLoading: setLoading,fromRemote: fromRemote);
    OrdersList? remoteData = getIt<OrdersHelper>().ordersListCubit.data;
    if(remoteData!=null){
      List<OrderModel> remoteAssignedOrders = remoteData.assignedOrders;
      List<OrderModel> localAssignedOrders = getIt<OrdersHelper>().getAssignedOrders();
      Set<int> remoteAssignedIds = remoteAssignedOrders.map((e) => e.id).toSet();
      localAssignedOrders.removeWhere((element) => !remoteAssignedIds.contains(element.id));
      getIt<OrdersHelper>().saveAssignedOrders(localAssignedOrders);
    }else{
      getIt<OrdersHelper>().saveAssignedOrders([]);
    }

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
        if(ordersListCubit.data == null && data.data!.isAvailable == true){
          getIt<OrdersHelper>().getAllOrders(setLoading: false);
        }
      },
      isError: (error) {

      },
    );
  }

  Future<void> acceptOrder(BuildContext context, OrderModel data) async {
    if (data.isAssigned) {
      final value = await  AutoRouter.of(context).push(OrderDetailsRouteName(id: data.id,
              targetTime: DateTime.now().add(Duration(
                minutes: data.preparationMinutes,
                seconds: data.preparationSeconds ?? 0,
              ))
          )
          );
      if (value!= null && value as int == data.id) {
        // var updatedList = List.of(assignedOrdersCubit.data ?? <OrderModel>[]);
        // updatedList.remove(data);
        // await getIt<OrdersHelper>().saveAssignedOrders(updatedList);
        // log('orders ==== >>>> before get all orders =====');
       await getAllOrders();
        // log('orders ==== >>>> before get all orders =====');
      }
      return;
    }
    var result = await getIt<HomeRepositories>().acceptOrder(OrdersParams(id: data.id));
    result.when(
      isSuccess: (data) async {
        data!.getOrderStatus() == OrderStatusEnum.preparing;
        var currentOrders = getIt<OrdersHelper>().assignedOrdersCubit.data ?? [];
        var updatedOrders = List<OrderModel>.from(currentOrders)..add(data);
        getIt<OrdersHelper>().assignedOrdersCubit.successState(updatedOrders);
        getIt<OrdersHelper>().saveAssignedOrders(updatedOrders);
        getIt<OrdersHelper>().getAllOrders();
        AutoRouter.of(context).push(OrderDetailsRouteName(id: data.id,
            targetTime: DateTime.now().add(Duration(
              minutes: data.preparationMinutes,
              seconds: data.preparationSeconds ?? 0,
            ))
        )
        );
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: Translate.of(context).order_accepted_failed));
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
