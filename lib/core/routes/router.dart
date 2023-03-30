part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(page: Splash.page),
    AdaptiveRoute(page: Login.page),
    AdaptiveRoute(page: ActiveAccount.page),
    AdaptiveRoute(page: ResetPassword.page),
    AdaptiveRoute(page: ForgetPassword.page),
    AdaptiveRoute(page: Terms.page),
    AdaptiveRoute(page: LocationAddress.page),
    AutoRoute(page: Home.page),
    ...baseRoute
  ];
}

