

import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/order_history_params.dart';

abstract class OrdersDataSource {

  Future<MyResult<OrderModel>> getCurrentOrder(bool params);

  Future<MyResult<List<OrderModel>>> getCompletedOrders(OrderHistoryParams params);

  Future<MyResult<List<OrderModel>>> getFailedOrders(OrderHistoryParams params);

  Future<MyResult<List<OrderModel>>> getNewOrders(GenericPaginateParams params);

}