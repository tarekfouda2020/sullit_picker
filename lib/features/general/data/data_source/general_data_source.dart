

import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/data/models/privacy_policy_model/privacy_policy_model.dart';
import 'package:flutter_tdd/features/general/data/models/terms_model/terms_model.dart';
import 'package:flutter_tdd/features/general/data/models/social_contact_us_model/social_contact_us_model.dart';
import 'package:flutter_tdd/features/general/domain/entity/update_coverage_area_params.dart';
import 'package:flutter_tdd/features/general/domain/entity/contact_us_params.dart';

import '../../../../core/http/models/result.dart';

abstract class GeneralDataSource {

  Future<MyResult<TermsModel>> getTerms (bool param);

  Future<MyResult<PrivacyPolicyModel>> getPrivacyPolicy (bool param);

  Future<MyResult<UserModel>> updateDriverLocation (UpdateCoverageAreaParams params);

  Future<MyResult<String>> contactUs (ContactUsParams params);

  Future<MyResult<List<SocialContactUsModel>>> getSocials(bool param);

}