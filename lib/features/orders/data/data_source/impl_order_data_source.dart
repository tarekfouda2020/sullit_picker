// ignore_for_file: avoid_dynamic_calls


import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/data_source/orders_data_source.dart';
import 'package:flutter_tdd/features/orders/data/models/statistics_model/statistics_model.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersDataSource)
class ImplOrderDataSource extends OrdersDataSource{

  @override
  Future<MyResult<List<StoreModel>>> getStores() {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.stores,
        responseType:ResType.list ,
        requestMethod: RequestMethod.get,
      toJsonFunc: (data) => List<StoreModel>.from(data.map((e) => StoreModel.fromJson(e))),
      responseKey: (data) => data['data'],
    );
    return GenericHttpImpl<List<StoreModel>>()(model);
  }

  @override
  Future<MyResult<StatisticsModel>> getStatistics(StatisticsParams params) {
    print("========+  ${params.url}  ======");
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.statistics+params.url,
      responseType:ResType.model ,
      requestMethod: RequestMethod.get,
      toJsonFunc: (data) => StatisticsModel.fromJson(data),
      responseKey: (data) => data['data'],
    );
    return GenericHttpImpl<StatisticsModel>()(model);
  }

}