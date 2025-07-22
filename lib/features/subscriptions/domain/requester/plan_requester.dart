


import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/subscription_model/subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/domain/repositories/subscription_repositories.dart';

class PlanRequester extends Requester<SubscriptionModel> {
  @override
  Future<void> request({bool fromRemote = true}) async{
    var result = await getIt<SubscriptionRepositories>().getSubscriptionPlan(fromRemote);
    result.when(
      isSuccess: (data) {
      successState(data!);
    },
      isError: (error) {
      failedState(error, () => request(fromRemote: fromRemote),);
    },);
  }

  void setLoadingState(){
    loadingState();
  }
}