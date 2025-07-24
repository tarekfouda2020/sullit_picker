

import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/models/statistics_model/statistics_model.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';

abstract class OrdersDataSource {

  Future<MyResult<List<StoreModel>>> getStores();

  Future<MyResult<StatisticsModel>> getStatistics(StatisticsParams params);

}