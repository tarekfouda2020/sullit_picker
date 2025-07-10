import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

final List<AutoRoute>  subscriptionsRoutes = [
  AdaptiveRoute(page: MySubscriptionPageRoute.page),
  AdaptiveRoute(page: SubscriptionPageRoute.page),
];