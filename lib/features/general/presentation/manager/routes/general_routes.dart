import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

final List<AutoRoute>  generalRoutes = [
  AdaptiveRoute(page: PrivacyPolicyPageRoute.page),
  AdaptiveRoute(page: TermsConditionsPageRoute.page),
  AdaptiveRoute(page: ContactUsPageRoute.page),
  AdaptiveRoute(page: ImageZoomRoute.page),
];