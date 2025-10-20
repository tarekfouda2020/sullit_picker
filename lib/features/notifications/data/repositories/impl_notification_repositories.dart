

import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/notifications/data/data_source/notification_data_source.dart';
import 'package:flutter_tdd/features/notifications/data/models/notification_model/notification_model.dart';
import 'package:flutter_tdd/features/notifications/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/notifications/domain/repositories/notification_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:NotificationRepositories )
class ImplNotificationRepositories extends NotificationRepositories {


  final NotificationDataSource dataSource = getIt<NotificationDataSource>();

  @override
  Future<MyResult<List<NotificationModel>>> getNotification(GenericPaginateParams params) {
    return dataSource.getNotifications(params);
  }


}