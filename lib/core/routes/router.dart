part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    // Auth Routes
    AdaptiveRoute(page: Splash.page, initial: true),
    AdaptiveRoute(page: LoginRegisterRoute.page),
    AdaptiveRoute(page: SubscriptionRoute.page),
    AdaptiveRoute(page: ForgetPasswordRoute.page),
    
    // Home Routes
    AutoRoute(page: HomeRoute.page),
    
    // Profile Routes
    AutoRoute(page: SideMenuRoute.page),
    AutoRoute(page: ChangePasswordRoute.page),
    AutoRoute(page: OrdersHistoryRoute.page),
    AutoRoute(page: WalletRoute.page),
    AutoRoute(page: StatisticsRoute.page),
    AutoRoute(page: ContactUsRoute.page),
    AutoRoute(page: TermsConditionsRoute.page),
    AutoRoute(page: PrivacyPolicyRoute.page),
    AutoRoute(page: NotificationsRoute.page),
    AutoRoute(page: MySubscriptionRoute.page),
  ];
}

