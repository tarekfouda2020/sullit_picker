import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/current_subscription_model/current_subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/domain/repositories/subscription_repositories.dart';

class CurrentSubscriptionRequester extends Requester<CurrentSubscriptionModel>{

  @override
  Future<void> request({bool fromRemote = true}) async{
    loadingState();
   var result = await getIt<SubscriptionRepositories>().currentSubscription(fromRemote);
   result.when(
       isSuccess: (data) {
         successState(data!);
       },
       isError: (error) {
         failedState(error, () => request(fromRemote: fromRemote),);
       },
   );
  }








}