import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

final List<AutoRoute>  authRoutes = [
  AdaptiveRoute(page: Splash.page, initial: true),
  AdaptiveRoute(page: LoginRegisterRoute.page),
  AdaptiveRoute(page: ForgetPasswordPageRoute.page),
  AdaptiveRoute(page: ChangePasswordPageRoute.page),
];