

import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/notifications/data/models/notification_model/notification_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';

abstract class NotificationRepositories {

  Future<MyResult<List<NotificationModel>>> getNotification(GenericPaginateParams params);



}