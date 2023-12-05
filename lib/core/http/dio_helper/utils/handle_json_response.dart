

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:injectable/injectable.dart';

import '../../models/http_request_model.dart';

@lazySingleton
class HandleJsonResponse<BaseModel> {

  Future<Either<BaseError, BaseModel>> call(
      Either<BaseError, Response> response,
      ResType responseType,
      _ToJsonFunc toJsonFunc,
      _ResponseKeyFunc? dataKeyFun,
      ) async {
    if (response.isLeft()) return Left(response.fold((l) => l, (r) => r.data));
    var responseData = response.fold((l) => null, (r) => r.data);
    switch (responseType) {
      case ResType.type:
        var data = dataKeyFun == null
            ? responseData
            : Function.apply(dataKeyFun, [responseData]);
        return Right(data);
      case ResType.model:
        var data = Function.apply(toJsonFunc, [
          dataKeyFun == null
              ? responseData
              : Function.apply(dataKeyFun, [responseData])
        ]);
        return Right(data);
      case ResType.list:
        var data = Function.apply(toJsonFunc, [
          dataKeyFun == null
              ? responseData
              : Function.apply(dataKeyFun, [responseData])
        ]);
        return Right(data);
    }
  }

}

typedef _ToJsonFunc = Function(dynamic data);
typedef _ResponseKeyFunc = Function(Response data);