import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/notifications/data/models/notification_model/notification_model.dart';
import 'package:flutter_tdd/features/notifications/domain/repositories/notification_repositories.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class NotificationPageController {


  final PagingController<int, NotificationModel> notifyPagingController = PagingController(firstPageKey: 1);


  NotificationPageController(){
    getNotifications(1,refresh: false);
    getNotifications(1);
    notifyPagingController.addPageRequestListener((pageKey) {
      getNotifications(pageKey);
    },);
  }


  Future<void> getNotifications(int currentPage,{bool refresh = true}) async {
    var params = _storesPaginateParams(refresh,currentPage);
    final result = await getIt<NotificationRepositories>().getNotification(params);
    final isLastPage = (result.data ?? <NotificationModel>[]).length < ApplicationConstants.paginationLimit;
    if (currentPage == 1) {
      notifyPagingController.itemList = [];
    }
    if (isLastPage) {
      notifyPagingController.appendLastPage(result.data ?? <NotificationModel>[]);
    } else {
      final nextPageKey = currentPage + 1;
      notifyPagingController.appendPage(result.data ?? <NotificationModel>[], nextPageKey);
    }
  }



  GenericPaginateParams _storesPaginateParams(bool refresh, int currentPage){
    return GenericPaginateParams(
        pageSize: ApplicationConstants.paginationLimit,
        refresh: refresh,
        currentPage: currentPage
    );
  }


}
