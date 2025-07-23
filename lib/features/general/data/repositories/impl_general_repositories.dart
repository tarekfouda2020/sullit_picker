
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/data/data_source/general_data_source.dart';
import 'package:flutter_tdd/features/general/data/models/privacy_policy_model/privacy_policy_model.dart';
import 'package:flutter_tdd/features/general/data/models/terms_model/terms_model.dart';
import 'package:flutter_tdd/features/general/data/models/social_contact_us_model/social_contact_us_model.dart';
import 'package:flutter_tdd/features/general/domain/entity/contact_us_params.dart';
import 'package:flutter_tdd/features/general/domain/entity/update_coverage_area_params.dart';
import 'package:flutter_tdd/features/general/domain/repositories/general_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GeneralRepositories)
class ImplGeneralRepositories extends GeneralRepositories {

  final GeneralDataSource dataSource = getIt<GeneralDataSource>();

  @override
  Future<MyResult<TermsModel>> getTerms(param) async{
    return await dataSource.getTerms(param);
  }

  @override
  Future<MyResult<PrivacyPolicyModel>> getPrivacyPolicy( param)async {
    return await dataSource.getPrivacyPolicy(param);
  }

  @override
  Future<MyResult<UserModel>> updateDriverLocation(UpdateCoverageAreaParams params) async {
    return await dataSource.updateDriverLocation(params);
  }

  @override
  Future<MyResult<String>> contactUs(ContactUsParams params) async {
    return await dataSource.contactUs(params);
  }

  @override
  Future<MyResult<List<SocialContactUsModel>>> getSocials(bool param) async {
    return await dataSource.getSocials(param);
  }


}