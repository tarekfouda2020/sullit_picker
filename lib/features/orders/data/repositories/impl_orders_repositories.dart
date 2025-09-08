
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/data_source/orders_data_source.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/data/models/statistics_model/statistics_model.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/orders_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersRepositories)
class ImplOrdersRepositories extends OrdersRepositories{

   OrdersDataSource dataSource = getIt<OrdersDataSource>();

  @override
  Future<MyResult<List<StoreModel>>> getStores(GenericPaginateParams params) {
    return dataSource.getStores(params);
  }

  @override
  Future<MyResult<StatisticsModel>> getStatistics(StatisticsParams params){
    return dataSource.getStatistics(params);
  }

  @override
  Future<MyResult<OrderModel>> getCurrentOrder(bool params)async{
    return dataSource.getCurrentOrder(params);
  }

}