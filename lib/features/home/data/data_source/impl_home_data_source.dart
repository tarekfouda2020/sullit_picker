// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/data_source/home_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeDataSource)
class ImplHomeDataSource extends HomeDataSource{
  @override
  Future<MyResult<UserModel>> getProfile() {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.profile,
        responseType: ResType.model,
        requestMethod: RequestMethod.get,
      toJsonFunc: (data) => UserModel.fromJson(data),
      responseKey: (data) => data['data'],
    );
    return GenericHttpImpl<UserModel>()(model);
  }
}