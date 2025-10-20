part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
   ...authRoutes,
    ...homeRoutes,
    ...generalRoutes,

    // Profile Routes
    AutoRoute(page: NotificationsPageRoute.page),
  ];
}

