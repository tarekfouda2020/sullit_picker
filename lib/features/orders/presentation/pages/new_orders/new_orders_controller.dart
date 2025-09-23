import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/orders_helper.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_order_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/orders/data/enum/order_status.dart';

import 'new_orders_imports.dart';

class NewOrdersController {
  final PagingController<int, OrderModel> pagingController = PagingController(firstPageKey: 1);

  NewOrdersController(BuildContext context) {
    callData(context);
  }

  void _setupPagination(BuildContext context) {
    getNewOrders(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getNewOrders(pageKey);
    });
  }

  void refreshOrders() {
    pagingController.refresh();
  }



  void callData(BuildContext context){
    var currentOrderCubit =  getIt<OrdersHelper>().currentOrderCubit;
    if(currentOrderCubit.hasNoData){
      _setupPagination(context);
    }
  }


  Future<void> getNewOrders(int currentPage, {bool refresh = true}) async {
    var params = _paginateParams(refresh, currentPage);
    final result = await getIt<OrdersDataSource>().getNewOrders(params);
    if(result.data!=null){
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



  Future<void> acceptOrder(BuildContext context,int id) async {
    var params = _updateOrderParams(id);
    var result = await getIt<HomeRepositories>().updateOrderStatus(params);
    result.when(
      isSuccess: (data) async{
       AutoRouter.of(context).maybePop();
       await Future.delayed(const Duration(milliseconds: 300));
       AutoRouter.of(context).maybePop(true);
      },
      isError: (error) {

      },
    );
  }



  UpdateOrderParams _updateOrderParams(int id) {
    return UpdateOrderParams(
      id: id,
      status: OrderStatus.assigned,
    );
  }


}