

import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/data/models/privacy_policy_model/privacy_policy_model.dart';
import 'package:flutter_tdd/features/general/data/models/terms_model/terms_model.dart';

import '../../../../core/http/models/result.dart';

abstract class GeneralDataSource {

  Future<MyResult<TermsModel>> getTerms (bool param);

  Future<MyResult<PrivacyPolicyModel>> getPrivacyPolicy (bool param);

}