

import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/general/data/data_source/general_data_source.dart';
import 'package:flutter_tdd/features/general/data/models/privacy_policy_model/privacy_policy_model.dart';
import 'package:flutter_tdd/features/general/data/models/terms_model/terms_model.dart';
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
  
}