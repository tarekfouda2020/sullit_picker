import 'profile_page_imports.dart';

class ProfilePageController {
  final isLoading = ObsValue<bool>.withInit(false);
  
  void navigateToChangePassword(BuildContext context) {
    AutoRouter.of(context).push(const ChangePasswordPageRoute());
  }
  
  void navigateToOrdersHistory(BuildContext context) {
    AutoRouter.of(context).push(const OrdersHistoryPageRoute());
  }
  
  void navigateToWallet(BuildContext context) {
    AutoRouter.of(context).push(const WalletPageRoute());
  }
  
  void navigateToStatistics(BuildContext context) {
    AutoRouter.of(context).push(const StatisticsPageRoute());
  }
  
  void navigateToContactUs(BuildContext context) {
    AutoRouter.of(context).push(const ContactUsPageRoute());
  }
  
  void navigateToTermsConditions(BuildContext context) {
    AutoRouter.of(context).push(const TermsConditionsPageRoute());
  }
  
  void navigateToPrivacyPolicy(BuildContext context) {
    AutoRouter.of(context).push(const PrivacyPolicyPageRoute());
  }
  
  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }
  
  void navigateToMySubscription(BuildContext context) {
    AutoRouter.of(context).push(const MySubscriptionPageRoute());
  }
  
  void logout(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 300));
    AutoRouter.of(context).replaceAll([const LoginRegisterRoute()]);
  }
  
  void goBack(BuildContext context) {
    AutoRouter.of(context).maybePop();
  }

  void routeToSupportedArea(BuildContext context) {
    AutoRouter.of(context).push( SupportedAreaPageRoute(fromProfile: true));
  }

} 