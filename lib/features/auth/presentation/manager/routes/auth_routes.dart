import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

final List<AutoRoute>  authRoutes = [
  AdaptiveRoute(page: SplashRoute.page, initial: true),
  AdaptiveRoute(page: LoginViewRoute.page),
  AdaptiveRoute(page: ForgetPasswordPageRoute.page),
  AdaptiveRoute(page: ChangePasswordPageRoute.page),
  AdaptiveRoute(page: ActiveAccountPageRoute.page),
  AdaptiveRoute(page: ConfirmResetPasswordPageRoute.page),
];