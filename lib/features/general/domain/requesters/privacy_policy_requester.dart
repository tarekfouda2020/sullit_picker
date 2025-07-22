

import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/general/data/data_source/general_data_source.dart';
import 'package:flutter_tdd/features/general/data/models/privacy_policy_model/privacy_policy_model.dart';

import '../../../../core/helpers/di.dart';

class PrivacyPolicyRequester extends Requester<PrivacyPolicyModel>{
  @override
  Future<void> request({bool fromRemote = true}) async {
    if (hasNoData) {
      loadingState();
    }

    var result = await getIt<GeneralDataSource>().getPrivacyPolicy(fromRemote);
    result.when(
      isSuccess: (data) {
        successState(data!);
      },
      isError: (error) {
        failedState(error, () => request(fromRemote: fromRemote));
      },
    );
  }
}