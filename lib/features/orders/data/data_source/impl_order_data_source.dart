// ignore_for_file: avoid_dynamic_calls


import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/data_source/orders_data_source.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/order_history_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersDataSource)
class ImplOrderDataSource extends OrdersDataSource{



  @override
  Future<MyResult<OrderModel>> getCurrentOrder(bool params) {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.currentOrder,
      responseType:ResType.model ,
      requestMethod: RequestMethod.get,
      toJsonFunc: (data) {
        if(data!=null){
          return OrderModel.fromJson(data);
        }else{
          return null;
        }
      },
      responseKey: (data) => data['data'],
      refresh: params
    );
    return GenericHttpImpl<OrderModel>()(model);
  }

  @override
  Future<MyResult<List<OrderModel>>> getCompletedOrders(OrderHistoryParams params) {
    HttpRequestModel model = HttpRequestModel(
      url:" ApiNames.completedOrders + params.url",
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params.paginateParams.refresh,
      toJsonFunc: (data) => List<OrderModel>.from(
        data.map((e) => OrderModel.fromJson(e))
      ),
      responseKey: (data) => data['data']['orders'],
    );
    return GenericHttpImpl<List<OrderModel>>()(model);
  }

  @override
  Future<MyResult<List<OrderModel>>> getFailedOrders(OrderHistoryParams params) {
    HttpRequestModel model = HttpRequestModel(
      url: "ApiNames.failedOrders + params.url",
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params.paginateParams.refresh,
      toJsonFunc: (data) => List<OrderModel>.from(
        data.map((e) => OrderModel.fromJson(e))
      ),
      responseKey: (data) => data['data']['orders'],
    );
    return GenericHttpImpl<List<OrderModel>>()(model);
  }

  @override
  Future<MyResult<List<OrderModel>>> getNewOrders(GenericPaginateParams params) {
    HttpRequestModel model = HttpRequestModel(
      url: "ApiNames.newOrders + params.paramsToQuery()",
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      toJsonFunc: (data) => List<OrderModel>.from(
        data.map((e) => OrderModel.fromJson(e))
      ),
      responseKey: (data) => data["data"]["orders"],
    );
    return GenericHttpImpl<List<OrderModel>>()(model);
  }

}