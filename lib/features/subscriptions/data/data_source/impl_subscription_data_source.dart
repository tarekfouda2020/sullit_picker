// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/current_subscription_model/current_subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/payment_method_model/payment_method_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/set_subscribe_plan_model/set_subscribe_plan_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/subscription_model/subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/get_pay_method_params.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/plan_payment_params.dart';
import 'package:injectable/injectable.dart';
import 'subscription_data_source.dart';

@Injectable(as: SubscriptionDataSource)
class ImplSubscriptionDataSource extends SubscriptionDataSource {

  @override
  Future<MyResult<List<PaymentMethodModel>>> getPaymentMethods(GetPayMethodParams params) {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.paymentMethods + params.header(),
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data['data'],
      refresh: params.refresh,
      toJsonFunc: (data) => List<PaymentMethodModel>.from(data.map((json) => PaymentMethodModel.fromJson(json))),
    );
    return GenericHttpImpl<List<PaymentMethodModel>>()(model);
  }

  @override
  Future<MyResult<SubscriptionModel>> getSubscriptionPlan(bool refresh) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.subscriptionPlan,
        responseType: ResType.model,
        requestMethod: RequestMethod.get,
        responseKey: (data) => data['data'],
        toJsonFunc: (data) => SubscriptionModel.fromJson(data),
        refresh: refresh);
    return GenericHttpImpl<SubscriptionModel>()(model);
  }

  @override
  Future<MyResult<SetSubscribePlanModel>> payForSubscription(PlanPaymentParams params) {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.subscribe,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['data'],
      requestBody: params.toJson(),
      toJsonFunc: (data) => SetSubscribePlanModel.fromJson(data),
      showLoader: params.showLoading,
      isFormData: true,
    );
    return GenericHttpImpl<SetSubscribePlanModel>()(model);
  }

  @override
  Future<MyResult<CurrentSubscriptionModel>> currentSubscription(bool refresh) {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.currentSubscription,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) => CurrentSubscriptionModel.fromJson(data),
    );
    return GenericHttpImpl<CurrentSubscriptionModel>()(model);
  }
}
