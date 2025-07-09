part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    // Auth Routes
   ...authRoutes,
    
    // Home Routes
   ...homeRoutes,
    
    // Profile Routes
    AutoRoute(page: OrdersHistoryRoute.page),
    AutoRoute(page: WalletRoute.page),
    AutoRoute(page: StatisticsRoute.page),
    AutoRoute(page: ContactUsRoute.page),
    AutoRoute(page: TermsConditionsRoute.page),
    AutoRoute(page: PrivacyPolicyRoute.page),
    AutoRoute(page: NotificationsPageRoute.page),
    AutoRoute(page: MySubscriptionRoute.page),
  ];
}

