import 'package:flutter_tdd/features/general/domain/requesters/terms_requester.dart';
class TermsConditionsController {

   final TermsRequester termsRequester = TermsRequester();

  Future<void> getTerms() async {
     termsRequester.request(fromRemote: false);
     termsRequester.request();
  }


}