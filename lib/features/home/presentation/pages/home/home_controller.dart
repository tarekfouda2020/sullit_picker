

import 'dart:developer';

import 'home_imports.dart';


class HomeController {
  // Order state management
  final ObsValue<bool> hasOrders = ObsValue<bool>.withInit(false);
  final ObsValue<bool> showOrderAlert = ObsValue<bool>.withInit(false);
  late final ObsValue<bool>  availableForOrdersObs = ObsValue<bool>.withInit(false);
  final ObsValue<OrderStatusEnum> orderStatusObs = ObsValue<OrderStatusEnum>.withInit(OrderStatusEnum.start);
  final ObsValue<ReportReasonEnum> reportReasonObs = ObsValue<ReportReasonEnum>.withInit(ReportReasonEnum.other);
  final TextEditingController reasonController = TextEditingController();


  bool popOut = false;

  Future<void> initializeOrderDialog(BuildContext context) async{
    await getDataAndUpdateAvailabilityStatus(context);
    if (availableForOrdersObs.getValue() && !hasOrders.getValue()) {
      showNewOrderDialog(context);
    }
  }


  void onPop() {
    if(popOut){
      SystemNavigator.pop();
    }else{
      popOut = true;
      AppSnackBar.showSimpleToast(
        msg: "back again to exit",
        type: ToastType.info,
        color: AppColors.fixedColors.gray58,
          textColor: AppColors.fixedColors.white,
        gravity: ToastGravity.BOTTOM
      );
      Future.delayed(const Duration(seconds: 7)).then((value) =>popOut = false );
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
    orderStatusObs.setValue(newStatus);
    orderStatusObs.refresh();
  }

  void updateReasonObs(ReportReasonEnum newValue){
    reportReasonObs.setValue(newValue);
    reportReasonObs.refresh();
  }

  void showReportSheet(BuildContext context){
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
      return ReportBottomSheetWidget(controller: this) ;
    },);
  }



  Future<void> updateAvailabilityStatus(BuildContext context)async{
    var result = await getIt<HomeRepositories>().updateAvailability();
    result.when(
        isSuccess: (data) async{
          availableForOrdersObs.setValue(data!.data.isAvailable);
          AppSnackBar.showSuccessSnackBar(data.msg,forceShow: true);
        },
        isError: (error) {
          AppSnackBar.showErrorSnackBar(error: error);
        },
    );
     await getDataAndUpdateAvailabilityStatus(context);
  }

  Future<void> getDataAndUpdateAvailabilityStatus(BuildContext context)async{
    await getIt<UserServicesHelper>().getUserData();
    await Future.delayed(const Duration(milliseconds: 10));
    bool isAvailable = context.read<UserCubit>().state.model!.isAvailable;
    availableForOrdersObs.setValue(isAvailable);
  }


} 