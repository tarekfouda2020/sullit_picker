import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/features/home/data/enum/report_reason_enum.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/repoer_bottom_sheet_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_imports.dart';


class HomeController {
  // Order state management
  final ObsValue<bool> hasOrders = ObsValue<bool>.withInit(false);
  final ObsValue<bool> showOrderAlert = ObsValue<bool>.withInit(false);
  final ObsValue<bool> isOnline = ObsValue<bool>.withInit(true);
  final ObsValue<OrderStatusEnum> orderStatusObs = ObsValue<OrderStatusEnum>.withInit(OrderStatusEnum.start);
  final ObsValue<ReportReasonEnum> reportReasonObs = ObsValue<ReportReasonEnum>.withInit(ReportReasonEnum.other);
  final TextEditingController reasonController = TextEditingController();


  bool popOut = false;

  void initializeOrderDialog(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (context.mounted) {
        showWelcomeDialog(context);
      }
    });
    
    // Show new order dialog after 2 seconds if online
    Future.delayed(const Duration(seconds: 2), () {
      if (isOnline.getValue() && !hasOrders.getValue()) {
        showNewOrderDialog(context);
      }
    });
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
    isOnline.setValue(!isOnline.getValue());
    
    // If going offline, clear any existing orders
    if (!isOnline.getValue()) {
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



} 