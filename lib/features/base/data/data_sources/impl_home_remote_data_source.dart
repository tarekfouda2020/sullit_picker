import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {

  // @override
  // Future<Either<Failure, List<AdModel>>> getAds(bool param) async {
  //   HttpRequestModel model = HttpRequestModel(
  //     url: ApiNames.ADS,
  //     requestMethod: RequestMethod.get,
  //     responseType: ResType.list,
  //     refresh: param,
  //     toJsonFunc: (json) =>
  //         List<AdModel>.from(json.map((e) => AdModel.fromJson(e))),
  //   );
  //   return await GenericHttpImpl<List<AdModel>>()(model);
  // }


}
