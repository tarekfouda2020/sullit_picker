import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';


final List<AutoRoute>  ordersRoutes = [
  AdaptiveRoute(page: OrdersHistoryPageRoute.page),
  AdaptiveRoute(page: StatisticsPageRoute.page),
  AdaptiveRoute(page: NewOrdersPageRoute.page),
];