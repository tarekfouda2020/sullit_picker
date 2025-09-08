
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/store_list_widget.dart';
import 'package:flutter_tdd/core/widgets/stores_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/orders/data/data_source/orders_data_source.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'statistics_page_imports.dart';

class StatisticsPageController {

  late final StatisticsRequester statisticsRequester;

  final StoresRequester storesRequester = StoresRequester();

  final ObsValue<StoreModel?> selectedStoreObs = ObsValue<StoreModel?>.withInit(null);

  final BaseBloc<bool> refreshCubit = BaseBloc<bool>(false);

  final PagingController<int, StoreModel> storePagingController = PagingController(firstPageKey: 1);


  StatisticsPageController(BuildContext context){
    initStatistics();
    context.read<UserCubit>().removeSelectedStores();
    _setupPagination(context);
  }


  void initStatistics(){
    var params = _params();
    statisticsRequester = StatisticsRequester(params: params);
    statisticsRequester.setLoadingState();
    statisticsRequester.request(fromRemote: false);
    statisticsRequester.request();
  }



  void _setupPagination(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    if(userData!.isFreelancer || userData.workWithMultiStore){
      getStores(1,refresh: false);
      getStores(1);
      storePagingController.addPageRequestListener((pageKey) {
        getStores(pageKey);
      },);
    }
  }

  Future<void> getStores(int currentPage,{bool refresh = true}) async {
    var params = _storesPaginateParams(refresh,currentPage);
    final result = await getIt<OrdersDataSource>().getStores(params);
    final isLastPage = (result.data ?? <StoreModel>[]).length < ApplicationConstants.paginationLimit;
    if (currentPage == 1) {
      storePagingController.itemList = [];
    }
    if (isLastPage) {
      storePagingController.appendLastPage(result.data ?? []);
    } else {
      final nextPageKey = currentPage + 1;
      storePagingController.appendPage(result.data ?? [], nextPageKey);
    }
  }

  void showStoresSheet(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    AppBottomSheets.showScrollableBody(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        if(userData?.isFreelancer == true || userData?.workWithMultiStore == true){
          return StoresBottomSheetWidget(
            pagingController: storePagingController,
            callBack: (store) {
             saveSelectedStore(context, store);
             refreshData();
            },
          );
        }else{
          return  StoreListWidget(
            onRefresh: (item) {
              saveSelectedStore(context,item);
              refreshData();
            },
          );
        }
      },
    );
  }


  void saveSelectedStore(BuildContext context, StoreModel? store){
    Navigator.pop(context);
    selectedStoreObs.setValue(store);
    selectedStoreObs.refresh();
  }

  void refreshData(){
    refreshCubit.loadingState();
    statisticsRequester.params = _params();
    statisticsRequester.request().then((value) {
      refreshCubit.successState(true);
    },);
  }


  GenericPaginateParams _storesPaginateParams(bool refresh, int currentPage){
    return GenericPaginateParams(
        pageSize: ApplicationConstants.paginationLimit,
        refresh: refresh,
        currentPage: currentPage
    );
  }

  StatisticsParams _params() {
    return StatisticsParams(sellerId: selectedStoreObs.getValue()?.id);
  }

}


