import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/payment_method_model/payment_method_model.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/get_pay_method_params.dart';
import 'package:flutter_tdd/features/subscriptions/domain/repositories/subscription_repositories.dart';

class PayMethodsRequester extends Requester<List<PaymentMethodModel>> {
  final bool getWalletPayMethod;

  PayMethodsRequester({required this.getWalletPayMethod});

  @override
  Future<void> request({bool fromRemote = true}) async {
    var params = _params(fromRemote);
    var result = await getIt<SubscriptionRepositories>().getPaymentMethods(params);
    result.when(isSuccess: (data) {
      successState(data ?? []);
    }, isError: (error) {
      failedState(error, () => request());
    });
  }

  GetPayMethodParams _params(bool refresh) => GetPayMethodParams(
        getWalletPayMethod: getWalletPayMethod,
        refresh: refresh,
      );


  void refresh(){
    successState(data??[]);
  }

}
