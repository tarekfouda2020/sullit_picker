

import 'package:flutter_tdd/features/general/domain/requesters/privacy_policy_requester.dart';

class PrivacyPolicyController {

  final PrivacyPolicyRequester privacyPolicyRequester = PrivacyPolicyRequester();

  Future<void> getPrivacyPolicy() async {
     privacyPolicyRequester.request(fromRemote: false);
     privacyPolicyRequester.request();
  }

}