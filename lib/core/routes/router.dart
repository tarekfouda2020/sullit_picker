part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(page: Splash.page, initial: true),
    AdaptiveRoute(page: Login.page),
    AdaptiveRoute(page: ActiveAccount.page),
    AdaptiveRoute(page: ResetPassword.page),
    AdaptiveRoute(page: ForgetPassword.page),
    AdaptiveRoute(page: Terms.page),
    AutoRoute(page: Home.page),
    ...baseRoute
  ];
}

