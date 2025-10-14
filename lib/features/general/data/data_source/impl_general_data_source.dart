// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/data/data_source/general_data_source.dart';
import 'package:flutter_tdd/features/general/data/models/privacy_policy_model/privacy_policy_model.dart';
import 'package:flutter_tdd/features/general/data/models/terms_model/terms_model.dart';
import 'package:flutter_tdd/features/general/data/models/social_contact_us_model/social_contact_us_model.dart';
import 'package:flutter_tdd/features/general/domain/entity/contact_us_params.dart';
import 'package:flutter_tdd/features/general/domain/entity/update_coverage_area_params.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/http/generic_http/api_names.dart';
import '../../../../core/http/models/http_request_model.dart';

@Injectable(as: GeneralDataSource)
class ImlGeneralDataSource extends GeneralDataSource{
  @override
  Future<MyResult<TermsModel>> getTerms(param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.terms,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      refresh: true,
      toJsonFunc: (json) => TermsModel.fromJson(json),
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<TermsModel>()(model);
  }

  @override
  Future<MyResult<PrivacyPolicyModel>> getPrivacyPolicy(param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.privacyPolicy,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      refresh: true,
      toJsonFunc: (json) => PrivacyPolicyModel.fromJson(json),
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<PrivacyPolicyModel>()(model);
  }


  @override
  Future<MyResult<String>> contactUs(ContactUsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.contactUs,
      responseType: ResType.type,
      requestMethod: RequestMethod.post,
      requestBody: params.toJson(),
      isFormData: true,
      showLoader: true,
      responseKey: (data) => data['msg'],
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<List<SocialContactUsModel>>> getSocials(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.socials,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      toJsonFunc: (data) => List<SocialContactUsModel>.from(data.map((e) => SocialContactUsModel.fromJson(e))),
      responseKey: (data) => data['data'],
      refresh: param
    );
    return await GenericHttpImpl<List<SocialContactUsModel>>()(model);
  }
}