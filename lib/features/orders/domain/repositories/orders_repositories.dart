

import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';

abstract class OrdersRepositories {


  Future<MyResult<OrderModel>> getCurrentOrder(bool params);

}