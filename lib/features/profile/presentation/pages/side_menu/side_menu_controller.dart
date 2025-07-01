import 'side_menu_imports.dart';

class SideMenuController {
  final isLoading = ObsValue<bool>.withInit(false);
  
  void navigateToChangePassword(BuildContext context) {
    AutoRouter.of(context).push(const ChangePasswordRoute());
  }
  
  void navigateToOrdersHistory(BuildContext context) {
    AutoRouter.of(context).push(const OrdersHistoryRoute());
  }
  
  void navigateToWallet(BuildContext context) {
    AutoRouter.of(context).push(const WalletRoute());
  }
  
  void navigateToStatistics(BuildContext context) {
    AutoRouter.of(context).push(const StatisticsRoute());
  }
  
  void navigateToContactUs(BuildContext context) {
    AutoRouter.of(context).push(const ContactUsRoute());
  }
  
  void navigateToTermsConditions(BuildContext context) {
    AutoRouter.of(context).push(const TermsConditionsRoute());
  }
  
  void navigateToPrivacyPolicy(BuildContext context) {
    AutoRouter.of(context).push(const PrivacyPolicyRoute());
  }
  
  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsRoute());
  }
  
  void navigateToMySubscription(BuildContext context) {
    AutoRouter.of(context).push(const MySubscriptionRoute());
  }
  
  void logout(BuildContext context) async {
    // Show loading state
    isLoading.setValue(true);
    
    // Simulate logout API call
    await Future.delayed(const Duration(seconds: 1));
    
    isLoading.setValue(false);
    
    // Clear user data and navigate to login
    AutoRouter.of(context).replaceAll([const LoginRegisterRoute()]);
  }
  
  void goBack(BuildContext context) {
    AutoRouter.of(context).pop();
  }
} 