import 'profile_page_imports.dart';

class ProfilePageController {
  final isLoading = ObsValue<bool>.withInit(false);
  
  void navigateToChangePassword(BuildContext context) {
    AutoRouter.of(context).push(const ChangePasswordPageRoute());
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
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }
  
  void navigateToMySubscription(BuildContext context) {
    AutoRouter.of(context).push(const MySubscriptionRoute());
  }
  
  void logout(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 300));
    AutoRouter.of(context).replaceAll([const LoginRegisterRoute()]);
  }
  
  void goBack(BuildContext context) {
    AutoRouter.of(context).pop();
  }

  void routeToSupportedArea(BuildContext context) {
    AutoRouter.of(context).push( SupportedAreaPageRoute(fromProfile: true));
  }

} 