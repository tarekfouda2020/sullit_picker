import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/orders/data/data_source/orders_data_source.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';

import 'new_orders_imports.dart';

class NewOrdersController {
  final PagingController<int, OrderModel> pagingController = PagingController(firstPageKey: 1);

  NewOrdersController(BuildContext context) {
    _setupPagination(context);
  }

  void _setupPagination(BuildContext context) {
    getNewOrders(1, refresh: false);
    getNewOrders(1, refresh: true);
    pagingController.addPageRequestListener((pageKey) {
      getNewOrders(pageKey);
    });
  }

  void refreshOrders() {
    pagingController.refresh();
  }

  Future<void> getNewOrders(int currentPage, {bool refresh = true}) async {
    var params = _paginateParams(refresh, currentPage);
    final result = await getIt<OrdersDataSource>().getNewOrders(params);
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
      pageSize: ApplicationConstants.paginationLimit,
      refresh: refresh,
      currentPage: currentPage,
    );
  }

  void dispose() {
    pagingController.dispose();
  }
}