

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/subscriptions/data/data_source/subscription_data_source.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/current_subscription_model/current_subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/payment_method_model/payment_method_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/set_subscribe_plan_model/set_subscribe_plan_model.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/subscription_model/subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/get_pay_method_params.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/plan_payment_params.dart';
import 'package:flutter_tdd/features/subscriptions/domain/repositories/subscription_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SubscriptionRepositories)
class ImplSubscriptionRepositories  extends SubscriptionRepositories{
  SubscriptionDataSource dataSource = getIt<SubscriptionDataSource>();


  @override
  Future<MyResult<List<PaymentMethodModel>>> getPaymentMethods(GetPayMethodParams params) {
    return dataSource.getPaymentMethods(params);
  }

  @override
  Future<MyResult<SubscriptionModel>> getSubscriptionPlan(bool refresh) {
    return dataSource.getSubscriptionPlan(refresh);
  }

  @override
  Future<MyResult<SetSubscribePlanModel>> payForSubscription(PlanPaymentParams params){
    return dataSource.payForSubscription(params);
  }

  @override
  Future<MyResult<CurrentSubscriptionModel>> currentSubscription(bool refresh){
    return dataSource.currentSubscription(refresh);
  }


}