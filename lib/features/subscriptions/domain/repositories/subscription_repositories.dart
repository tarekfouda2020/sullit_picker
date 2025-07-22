

import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/current_subscription_model/current_subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/payment_method_model/payment_method_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/set_subscribe_plan_model/set_subscribe_plan_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/subscription_model/subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/get_pay_method_params.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/plan_payment_params.dart';

abstract class SubscriptionRepositories {

  Future<MyResult<List<PaymentMethodModel>>> getPaymentMethods(GetPayMethodParams params);

  Future<MyResult<SubscriptionModel>> getSubscriptionPlan(bool refresh);

  Future<MyResult<SetSubscribePlanModel>> payForSubscription(PlanPaymentParams params);

  Future<MyResult<CurrentSubscriptionModel>> currentSubscription(bool refresh);


}