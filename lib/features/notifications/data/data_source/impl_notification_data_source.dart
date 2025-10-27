// ignore_for_file: avoid_dynamic_calls


import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/notifications/data/data_source/notification_data_source.dart';
import 'package:flutter_tdd/features/notifications/data/models/notification_model/notification_model.dart';
import 'package:flutter_tdd/features/notifications/domain/entity/generic_pagin_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NotificationDataSource)
class ImplNotificationDataSource extends NotificationDataSource {

  @override
  Future<MyResult<List<NotificationModel>>> getNotifications(GenericPaginateParams params) async{
    HttpRequestModel  model = HttpRequestModel(
        url: ApiNames.notifications + params.paramsToQuery(),
        responseType: ResType.list,
        requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseKey: (data) => data['data']['notifications'],
      toJsonFunc: (json) => List<NotificationModel>.from(
        json.map((e) => NotificationModel.fromJson(e)),
      ).toList(),
    );
    return await GenericHttpImpl<List<NotificationModel>>()(model);
  }

}