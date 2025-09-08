import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';

import 'stores_page_imports.dart';

class StoresPageController {

  final PagingController<int, StoreModel> pagingController = PagingController(firstPageKey: 1);



  void initStorePaginate(BuildContext context){
    context.read<UserCubit>().removeSelectedStores();
    var userData = context.read<UserCubit>().state.model;
    if(userData?.workWithOneStore == false){
      getStores(1,refresh: false);
      getStores(1);
      pagingController.addPageRequestListener((pageKey) {
        getStores(pageKey);
      });
    }

  }

  Future<void> getStores(int currentPage,{bool refresh = true}) async {
    var params = _storesPaginateParams(refresh,currentPage);
    final result = await getIt<OrdersDataSource>().getStores(params);
    final isLastPage = (result.data ?? <StoreModel>[]).length < ApplicationConstants.paginationLimit;
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



  GenericPaginateParams _storesPaginateParams(bool refresh, int currentPage){
    return GenericPaginateParams(
        pageSize: ApplicationConstants.paginationLimit,
        refresh: refresh,
        currentPage: currentPage
    );
  }


}