
import 'package:flutter_tdd/features/general/domain/requesters/terms_requester.dart';

class TermsConditionsController {

  late final TermsRequester termsRequester;

  Future<void> getTerms() async {
    termsRequester = TermsRequester();
    await termsRequester.request();
  }


}