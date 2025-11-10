
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/notifications/domain/entity/generic_pagin_params.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/helpers/export.dart';

class OrderHistoryController {

  final PagingController<int, OrderModel> pagingController = PagingController(firstPageKey: 1);

  void setupPagination(BuildContext context) {
    getPreviousOrders(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPreviousOrders(pageKey);
    });
  }

  Future<void> getPreviousOrders(int currentPage, {bool refresh = true}) async {
    var params = _paginateParams(refresh, currentPage);
    final result = await getIt<HomeRepositories>().getPreviousOrders(params);
    final isLastPage = (result.data ?? <OrderModel>[]).length < ApplicationConstants.paginationLimit;

    if (currentPage == 1) {
      pagingController.itemList = [];
    }

    if (isLastPage) {
      pagingController.appendLastPage(result.data ?? []);
    } else {
      final nextPageKey = currentPage + 1;
      pagingController.appendPage(result.data ?? [], nextPageKey);
    }
  }

  GenericPaginateParams _paginateParams(bool refresh, int currentPage) {
    return GenericPaginateParams(
      refresh: refresh,
      currentPage: currentPage,
    );
  }


  void refreshOrders(){
    getPreviousOrders(1);
  }

  

}