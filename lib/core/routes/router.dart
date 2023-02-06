part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //auth routes
    AdaptiveRoute(page: Splash, initial: true),
    AdaptiveRoute(page: Login),
    AdaptiveRoute(page: ActiveAccount),
    AdaptiveRoute(page: ResetPassword),
    AdaptiveRoute(page: ForgetPassword),
    AdaptiveRoute(page: Terms),
    AdaptiveRoute(page: LocationAddress),
    AutoRoute(page: Home,children: [baseRoute]),

  ],
)
class $AppRouter {}
