import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_state.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_order_params.dart';
import 'package:flutter_tdd/features/orders/data/enum/order_status.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/orders_repositories.dart';
import 'package:flutter_tdd/features/home/domain/requester/report_reasons_requester.dart';

import 'home_imports.dart';
import 'widgets/report_reason_dialog.dart';

class HomeController {
  final ObsValue<bool> hasOrders = ObsValue<bool>.withInit(false);
  final ObsValue<bool> showOrderAlert = ObsValue<bool>.withInit(false);
  late final ObsValue<bool> availableForOrdersObs = ObsValue<bool>.withInit(false);
  final TextEditingController reasonController = TextEditingController();
  final BaseBloc<OrderModel?> currentOrderCubit = BaseBloc<OrderModel?>();
  final ReportReasonsRequester reportReasonsRequester = ReportReasonsRequester();

  bool popOut = false;

  HomeController() {
    getCurrentOrder();
  }

  Future<void> getCurrentOrder({bool fromRemote = true}) async {
    var result = await getIt<OrdersRepositories>().getCurrentOrder(fromRemote);
    result.when(
      isSuccess: (data) {
        currentOrderCubit.successState(data);
        _initializeReportReasons();
      },
      isError: (error) {
        currentOrderCubit.failedState(
          error,
          () {},
        );
      },
    );
  }

  void _initializeReportReasons() {
    var data = currentOrderCubit.data;
    // if (data?.isAssigned == true
    //     || data?.isPending == true
    //     || reportReasonsRequester.hasData
    //     || data == null) {
    //   return;
    // }
    reportReasonsRequester.request(fromRemote: false);
    reportReasonsRequester.request();
  }

  Future<void> initializeOrderDialog(BuildContext context) async {
    bool isAvailable = context.read<UserCubit>().state.model!.isAvailable;
    availableForOrdersObs.setValue(isAvailable);
    getUserData();
    if (availableForOrdersObs.getValue() && !hasOrders.getValue()) {
      showNewOrderDialog(context);
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

  void toggleOrderState() {
    hasOrders.setValue(!hasOrders.getValue());
  }

  void toggleOnlineStatus() {
    availableForOrdersObs.setValue(!availableForOrdersObs.getValue());

    // If going offline, clear any existing orders
    if (!availableForOrdersObs.getValue()) {
      hasOrders.setValue(false);
    }
  }

  void acceptOrder(BuildContext context) {
    showOrderAlert.setValue(false);
    hasOrders.setValue(true);
    Navigator.of(context).pop();
  }

  void rejectOrder(BuildContext context) {
    showOrderAlert.setValue(false);
    hasOrders.setValue(false);
    Navigator.of(context).pop();
  }

  void completeOrder(BuildContext context) {
    hasOrders.setValue(false);

    AppSnackBar.showSuccessSnackBar(Translate.of(context).order_completed_successfully);
  }

  void navigateToSideMenu(BuildContext context) {
    AutoRouter.of(context).push(const ProfilePageRoute());
  }

  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }

  void showWelcomeDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => const NewOrderAlertWidget(),
    );
  }

  void showNewOrderDialog(BuildContext context) {
    showOrderAlert.setValue(true);
  }

  void showReportProblemDialog(BuildContext context) {
    _showProblemReportedSuccess(context);
  }

  void _showProblemReportedSuccess(BuildContext context) {
    AppSnackBar.showSuccessSnackBar(Translate.of(context).problem_reported_successfully);
  }

  void updateOrderStatus(OrderStatusEnum newStatus) {
    // currentOrderRequester.data.getOrderStatus() = newStatus;
    // orderStatusObs.refresh();
  }

  void showReportSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return ReportBottomSheetWidget(controller: this);
      },
    );
  }

  Future<void> updateAvailabilityStatus(BuildContext context) async {
    if (currentOrderCubit.hasData) {
      return;
    }
    var result = await getIt<HomeRepositories>().updateAvailability();
    result.when(
      isSuccess: (data) async {
        availableForOrdersObs.setValue(data!.data.isAvailable);
        AppSnackBar.showSuccessSnackBar(data.msg, forceShow: true);
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: error);
      },
    );
    getUserData();
  }

  void getUserData() {
    getIt<UserServicesHelper>().getUserData();
    // await Future.delayed(const Duration(milliseconds: 10));
    // bool isAvailable = context.read<UserCubit>().state.model!.isAvailable;
    // availableForOrdersObs.setValue(isAvailable);
  }

  Future<void> changeOrderStatus({OrderStatus? status}) async {
    var params = _updateOrderParams(status: status);
    var result = await getIt<HomeRepositories>().updateOrderStatus(params);
    result.when(
      isSuccess: (data) {
        currentOrderCubit.successState(data);
        _setNoOrdersView(data!);
        _initializeReportReasons();
      },
      isError: (error) {
        currentOrderCubit.successState(currentOrderCubit.data);
      },
    );
  }

  UpdateOrderParams _updateOrderParams({OrderStatus? status}) {
    return UpdateOrderParams(
      id: currentOrderCubit.data!.id,
      status: status ?? getNextStatusForUpdate(),
      reasonKey: _reasonKey(),
      reasonText: _getReasonText(),
    );
  }

  OrderStatus getNextStatusForUpdate() {
    var currentStatus = currentOrderCubit.data!.getOrderStatus();
    // var currentStatus = currentOrderCubit.data!.histories!.last.getOrderStatus();

    switch (currentStatus) {
      case OrderStatus.pending:
        return OrderStatus.assigned;

      case OrderStatus.assigned:
        return OrderStatus.inDelivery;

      case OrderStatus.inDelivery:
        return OrderStatus.arrived;

      case OrderStatus.arrived:
        return OrderStatus.delivered;

      case OrderStatus.delivered:
        return OrderStatus.delivered;

      case OrderStatus.driverReported:
        return OrderStatus.driverReported;
    }
  }

  String? _getReasonText() {
    var selectedReportReason = reportReasonsRequester.selectedReason;
    if (selectedReportReason?.isOther == true) {
      return reasonController.text;
    } else {
      return null;
    }
  }

  String? _reasonKey() {
    if (getNextStatusForUpdate() == OrderStatus.driverReported) {
      var selectedReportReason = reportReasonsRequester.selectedReason;
      return selectedReportReason?.key;
    } else {
      return null;
    }
  }

  void _setNoOrdersView(OrderModel model) {
    /// when order is delivered or reported
    /// show the view of no orders for now
    if (model.isDelivered) {
      AppSnackBar.showSuccessSnackBar("You have completed Your order");
      currentOrderCubit.successState(null);
      return ;
    }
    if(model.isReported){
      AppSnackBar.showSuccessSnackBar("Your report has been submitted successfully");
      currentOrderCubit.successState(null);
      return ;
    }
  }


  ///TODO will be removed later
  Future<void> refresh()async{
    // currentOrderCubit.loadingState();
    await getCurrentOrder(fromRemote: true);
  }



  void showReportReasonSheet(BuildContext context){
    showDialog(
      context: context,
      builder: (context) {
      return ReportReasonDialog(controller: this);
    });
  }

}
