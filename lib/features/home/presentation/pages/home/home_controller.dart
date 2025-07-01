import 'home_imports.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'widgets/home_widgets_imports.dart';

class HomeController {
  // Order state management
  final hasOrders = ObsValue<bool>.withInit(false);
  final showOrderAlert = ObsValue<bool>.withInit(false);
  final isOnline = ObsValue<bool>.withInit(true);
  
  // Sample order data
  final currentOrder = ObsValue<Map<String, dynamic>?>.withInit({
    'id': '#ORD-12345',
    'customerName': 'أحمد محمد',
    'customerPhone': '+966 50 123 4567',
    'address': 'شارع الملك فهد، الرياض',
    'items': [
      {'name': 'برجر لحم', 'quantity': 2},
      {'name': 'بطاطس مقلية', 'quantity': 1},
      {'name': 'مشروب غازي', 'quantity': 2},
    ],
    'total': 85.50,
    'paymentMethod': 'نقدي',
    'distance': '2.5 كم',
    'estimatedTime': '15 دقيقة',
  });
  
  void initializeHome(BuildContext context) {
    // Show welcome dialog after 500ms
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
  
  void dispose() {
    // Clean up observables if needed
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
    currentOrder.setValue(null);
    
    // Show success message
    AppSnackBar.showSuccessSnackBar(Translate.of(context).order_completed_successfully);
  }
  
  void navigateToSideMenu(BuildContext context) {
    // TODO: Implement side menu navigation
    // AutoRouter.of(context).push(const SideMenuRoute());
  }
  
  void navigateToNotifications(BuildContext context) {
    // TODO: Implement notifications navigation
    // AutoRouter.of(context).push(const NotificationsRoute());
  }
  
  void showWelcomeDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => const WelcomeDialogWidget(),
    );
  }
  
  void showNewOrderDialog(BuildContext context) {
    // TODO: Implement new order dialog
    // This would show a dialog for new incoming orders
    showOrderAlert.setValue(true);
  }
  
  void showReportProblemDialog(BuildContext context) {
    // TODO: Implement report problem dialog
    // This would show a bottom sheet for reporting problems
    _showProblemReportedSuccess(context);
  }
  
  void _showProblemReportedSuccess(BuildContext context) {
    AppSnackBar.showSuccessSnackBar(Translate.of(context).problem_reported_successfully);
  }
} 