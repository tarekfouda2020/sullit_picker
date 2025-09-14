// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_tdd/features/home/data/model/available_for_order_model/available_for_order_model.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/home/data/model/report_reason_model/report_reason_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_order_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_profile_image_params.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeDataSource)
class ImplHomeDataSource extends HomeDataSource{
  @override
  Future<MyResult<UserModel>> getProfile() {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.profile,
        responseType: ResType.model,
        requestMethod: RequestMethod.get,
      toJsonFunc: (data) => UserModel.fromJson(data),
      responseKey: (data) => data['data'],
    );
    return GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<UserModel>> updateProfileImage(UpdateProfileImageParams params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.updateProfileImage,
        responseType: ResType.model,
        requestMethod: RequestMethod.post,
      toJsonFunc: (data) => UserModel.fromJson(data),
      responseKey: (data) => data['data'],
      requestBody: params.toJson(),
      isFormData: true,
      showLoader: true
    );
    return GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<AvailableForOrderModel>> updateAvailability() {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.toggleAvailability,
        responseType: ResType.model,
        requestMethod: RequestMethod.post,
      responseKey: (data) => data,
      toJsonFunc: (data) => AvailableForOrderModel.fromJson(data),
      showLoader: true
    );
    return GenericHttpImpl<AvailableForOrderModel>()(model);
  }

  @override
  Future<MyResult<List<LangModel>>> getLanguages(bool params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.getLanguages,
        responseType: ResType.list,
        requestMethod: RequestMethod.get,
      responseKey: (data) => data["data"],
      toJsonFunc: (data) => List<LangModel>.from(data.map((e) => LangModel.fromJson(e))).toList(),
      showLoader: true
    );
    return GenericHttpImpl<List<LangModel>>()(model);
  }

  @override
  Future<MyResult<OrderModel>> updateOrderStatus(UpdateOrderParams params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.updateOrderStatus(params.id),
        responseType: ResType.model,
        requestMethod: RequestMethod.post,
      responseKey: (data) => data["data"],
      toJsonFunc: (data) => OrderModel.fromJson(data),
      showLoader: true,
      requestBody: params.toJson(),
      isFormData: false
    );
    return GenericHttpImpl<OrderModel>()(model);
  }

  @override
  Future<MyResult<List<ReportReasonModel>>> getReportReasons() {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.reportReasons,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      toJsonFunc: (data) => List<ReportReasonModel>.from(
        data.map((e) => ReportReasonModel.fromJson(e))
      ),
      responseKey: (data) => data['data'],
    );
    return GenericHttpImpl<List<ReportReasonModel>>()(model);
  }
}