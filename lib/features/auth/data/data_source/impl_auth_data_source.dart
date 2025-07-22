// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/data/models/work_type_model/work_type_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/change_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource extends AuthDataSource{
  @override
  Future<MyResult<UserModel>> registerUser(RegisterParams params) {
     HttpRequestModel model = HttpRequestModel(
         url: ApiNames.register,
         responseType: ResType.model,
         requestMethod: RequestMethod.post,
       toJsonFunc: (data) => UserModel.fromJson(data),
       responseKey: (data) => data['data'],
       requestBody: params.toJson(),
       isFormData: true,
       showLoader: true
     );
    return GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<List<WorkTypeModel>>> getWorkTypes() {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.workTypes,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      toJsonFunc: (data) => List<WorkTypeModel>.from(data.map((e) => WorkTypeModel.fromJson(e))),
      responseKey: (data) => data['data'],
    );
    return GenericHttpImpl<List<WorkTypeModel>>()(model);
  }

  @override
  Future<MyResult<String>> verifyEmail(VerifyParams params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.verifyEmail,
        responseType: ResType.type,
        requestMethod: RequestMethod.post,
        responseKey: (data) => data['msg'],
        requestBody: params.emailToJson(),
        isFormData: true,
      showLoader: true
    );
    return GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<String>> verifyPhone(VerifyParams params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.verifyPhone,
        responseType: ResType.type,
        requestMethod: RequestMethod.post,
        responseKey: (data) => data['msg'],
        requestBody: params.phoneToJson(),
        isFormData: true,
        showLoader: true
    );
    return GenericHttpImpl<String>().call(model);
  }

  @override
  Future<MyResult<UserModel>> sendLogin(LoginParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.login,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      requestBody: params.toJson(),
      showLoader: false,
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<String>> sendChangePassword(ChangePasswordParams params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.updatePassword,
        responseType: ResType.type,
        requestMethod: RequestMethod.post,
        responseKey: (data) => data['msg'],
        requestBody: params.toJson(),
        isFormData: true,
        showLoader: true
    );
    return GenericHttpImpl<String>().call(model);
  }

}