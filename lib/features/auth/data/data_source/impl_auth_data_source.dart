// ignore_for_file: avoid_dynamic_calls

import 'dart:developer';

import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/instructions_model/instructions_model.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/data/models/work_type_model/work_type_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/change_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/confirm_reset_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/logout_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource extends AuthDataSource{


  @override
  Future<MyResult<String>> forgotPassword(VerifyParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.passwordForgot,
      responseType: ResType.type,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['data']['expires_at'],
      requestBody: params.emailToJson(),
      isFormData: true,
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<String>> confirmResetPassword(ConfirmResetPasswordParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.confirmResetPassword,
      responseType: ResType.type,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['msg'],
      requestBody: params.toJson(),
      isFormData: true,
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }
  @override
  Future<MyResult<UserModel>> sendLogin(LoginParams params)async {
    log("sendLogin${params.toJson()}");
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.login,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      requestBody: params.toJson(),
      refresh: true,
      toJsonFunc: (json) => UserModel.fromJson(json),
      isFormData: true,
    );
    return await GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<String>> logout(LogoutParams params) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.logout,
      responseType: ResType.type,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['msg'],
      isFormData: true,
      requestBody: params.toJson()
    );
    return await GenericHttpImpl<String>()(model);
  }
  @override
  Future<MyResult<String>> sendChangePassword(ChangePasswordParams params) async{
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.updatePassword,
        responseType: ResType.type,
        requestMethod: RequestMethod.post,
        responseKey: (data) => data['msg'],
        requestBody: params.toJson(),
        isFormData: true,
        showLoader: true
    );
    return await GenericHttpImpl<String>().call(model);
  }


}