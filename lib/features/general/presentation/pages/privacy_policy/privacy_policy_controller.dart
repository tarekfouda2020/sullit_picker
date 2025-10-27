

import 'package:flutter_tdd/features/general/domain/requesters/privacy_policy_requester.dart';

class PrivacyPolicyController {

  late  final PrivacyPolicyRequester privacyPolicyRequester;

  Future<void> getPrivacyPolicy() async {
    privacyPolicyRequester = PrivacyPolicyRequester();
    await privacyPolicyRequester.request(fromRemote: false);
  }

}