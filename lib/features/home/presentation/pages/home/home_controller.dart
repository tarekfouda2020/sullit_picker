import 'dart:developer';
import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/helpers/device_id_helper.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/timer_entity.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/update_dialog_widget.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_device_token_params.dart';
import 'package:new_version_plus/new_version_plus.dart';
import '../order_details/order_details_imports.dart';
import 'home_imports.dart';

class HomeController {
  final ObsValue<bool> hasOrders = ObsValue<bool>.withInit(false);
  final ObsValue<bool> availableForOrdersObs = ObsValue<bool>.withInit(false);
  final ObsValue<TimerEntity> timerObs =
      ObsValue<TimerEntity>.withInit(TimerEntity());
  final ObsValue<bool> showScrollTopObs = ObsValue<bool>.withInit(false);
  final ScrollController scrollController = ScrollController();

  void initScrollListener() {
    scrollController.addListener(() {
      showScrollTopObs.setValue(scrollController.offset > 500);
    });
  }

  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOut,
    );
  }

  void disposeScrollController() {
    scrollController.dispose();
  }

  // final BaseBloc<OrdersModel?> ordersCubit = BaseBloc<OrdersModel?>();

  BaseBloc<List<OrderModel>> get assignedOrdersCubit =>
      getIt<OrdersHelper>().assignedOrdersCubit;

  BaseBloc<OrdersList?> get ordersListCubit =>
      getIt<OrdersHelper>().ordersListCubit;

  HomeController() {
    checkForUpdate();
    getUserData();
    getAllOrders(fromRemote: false);
    getAllOrders();
    _checkDeviceToken();
  }

  Future<void> _checkDeviceToken() async {
    var helper = getIt<DeviceIdHelper>();
    final String? oldToken = await helper.getStoredToken();
    final String? newToken = await helper.getDeviceId();

    if (newToken != null && newToken.isNotEmpty) {
      if (oldToken != null && oldToken != newToken) {
        var params = _updateDeviceTokenParams(newToken: newToken,oldToken:oldToken);
        final result = await getIt<HomeRepositories>().updateDeviceToken(params);
        result.when(
          isSuccess: (data) {
            helper.saveToken(newToken);
          },
          isError: (error) {
            log("Failed to update device token: $error");
          },
        );
      } else if (oldToken == null) {
        await helper.saveToken(newToken);
      }
    }
  }


  UpdateDeviceTokenParams _updateDeviceTokenParams({
    required String oldToken,
    required String newToken
  }) {
    return UpdateDeviceTokenParams(
      oldDeviceToken: oldToken,
      newDeviceToken: newToken,
    );
  }

  bool popOut = false;

  void checkForUpdate() async {
    final NewVersionPlus newVersion = NewVersionPlus(
      androidId: AppConfig.instance.appId,
      iOSId: AppConfig.instance.iosAppId,
    );
    final status = await newVersion.getVersionStatus();
    if (status != null && status.canUpdate) {
      showUpdateDialog();
    }
  }

  Future<void> initializeAvailableStatus(BuildContext context,
      {bool value = false}) async {
    bool? isAvailable = context.read<UserCubit>().state.model?.isAvailable;
    availableForOrdersObs.setValue(isAvailable ?? value);
    availableForOrdersObs.refresh();
  }

  // Future<void> getAllOrders({bool fromRemote = true, bool setLoading = true}) async {
  //  await getIt<OrdersHelper>().getAllOrders(setLoading: setLoading,fromRemote: fromRemote);
  // }

  Future<void> getAllOrders(
      {bool fromRemote = true, bool setLoading = true}) async {
    await getIt<OrdersHelper>()
        .getAllOrders(setLoading: setLoading, fromRemote: fromRemote);
    OrdersList? remoteData = getIt<OrdersHelper>().ordersListCubit.data;
    List<OrderModel> localAssignedOrders =
        getIt<OrdersHelper>().getAssignedOrders();
    if (remoteData != null) {
      final Map<int, OrderModel> localById = {
        for (final OrderModel o in localAssignedOrders) o.id: o
      };
      // keep local version when exists (preserves picker state), add remote otherwise
      final List<OrderModel> merged = remoteData.assignedOrders
          .map((remote) => localById[remote.id] ?? remote)
          .toList();
      getIt<OrdersHelper>().ordersListCubit.successState(remoteData);
      getIt<OrdersHelper>().saveAssignedOrders(merged);
    } else {
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
      Future.delayed(const Duration(seconds: 7))
          .then((value) => popOut = false);
    }
  }

  void navigateToSideMenu(BuildContext context) {
    AutoRouter.of(context).push(const ProfilePageRoute());
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
        context.read<UserCubit>().onUpdateUserData(userData?.copyWith(
            isAvailable: data.data?.isAvailable ?? userData.isAvailable));
        if (ordersListCubit.data == null && data.data!.isAvailable == true) {
          getIt<OrdersHelper>().getAllOrders(setLoading: false);
        }
      },
      isError: (error) {},
    );
  }

  Future<void> acceptOrder(BuildContext context, OrderModel data) async {
    if (data.isPharm && data.requiresPrescriptionReview == true) {
      if(data.awaitingCustomerCompletion == true){
        try{
          getIt<OrdersHelper>().deleteOrderDetails(data.id);
          getIt<OrdersHelper>().deletePrescriptionOrderState(data.id);
        }catch(e){
          log('error deleting order details');
        }
      }
      AutoRouter.of(context).push(PrescriptionOrderRoute(orderId: data.id));
      return;
    }

    if (data.isAssigned) {
        await _routeToOrderDetails(context, data);
      return;
    }


    getIt<LoadingHelper>().showLoadingDialog();
    var result = await getIt<HomeRepositories>().acceptOrder(OrdersParams(id: data.id));
    result.when(
      isSuccess: (data) async {
        getIt<LoadingHelper>().dismissDialog();
        data!.getOrderStatus() == OrderStatusEnum.preparing;
        var currentOrders =
            getIt<OrdersHelper>().assignedOrdersCubit.data ?? [];
        var updatedOrders = List<OrderModel>.from(currentOrders)..add(data);
        getIt<OrdersHelper>().assignedOrdersCubit.successState(updatedOrders);
        getIt<OrdersHelper>().saveAssignedOrders(updatedOrders);
        getIt<OrdersHelper>().getAllOrders();
        AutoRouter.of(context).push(OrderDetailsRouteName(
            id: data.id,
            targetTime: DateTime.now().add(Duration(
              minutes: data.preparationMinutes,
              seconds: data.preparationSeconds ?? 0,
            ))));
      },
      isError: (error) {
        getIt<LoadingHelper>().dismissDialog();
        AppSnackBar.showErrorSnackBar(
            error: BaseError.unknown(
                msg: Translate.of(context).order_accepted_failed));
      },
    );
  }

  Future<void> _routeToOrderDetails(BuildContext context, OrderModel data) async {
        final value = await AutoRouter.of(context).push(OrderDetailsRouteName(
        id: data.id,
        targetTime: DateTime.now().add(Duration(
          minutes: data.preparationMinutes,
          seconds: data.preparationSeconds ?? 0,
        ))));
    if (value != null && value as int == data.id) {
      var updatedList = List.of(assignedOrdersCubit.data ?? <OrderModel>[]);
      updatedList.remove(data);
      await getIt<OrdersHelper>().saveAssignedOrders(updatedList);
      await getAllOrders(setLoading: false);
      // log('orders ==== >>>> before get all orders =====');
    }
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

  double screenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;

  void showUpdateDialog() {
    BuildContext context = getIt<GlobalContext>().context();
    showDialog(
      barrierDismissible: false,
      useRootNavigator: true,
      context: context,
      builder: (context) {
        return const UpdateDialogWidget();
      },
    );
  }
}
