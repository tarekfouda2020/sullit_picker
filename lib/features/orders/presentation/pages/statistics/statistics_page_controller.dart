
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/stores_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';

import 'statistics_page_imports.dart';

class StatisticsPageController {

  late final StatisticsRequester statisticsRequester;

  final StoresRequester storesRequester = StoresRequester();

  final ObsValue<StoreModel?> selectedStoreObs = ObsValue<StoreModel?>.withInit(null);

  final BaseBloc<bool> refreshCubit = BaseBloc<bool>(false);

  StatisticsPageController(){
    initStatistics();
  }


  void initStatistics(){
    var params = _params();
    statisticsRequester = StatisticsRequester(params: params);
    storesRequester.request();

    statisticsRequester.setLoadingState();
    statisticsRequester.request(fromRemote: false);
    statisticsRequester.request();
  }

  void showStoresSheet(BuildContext context){
    AppBottomSheets.showScrollableBody(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return StoresBottomSheetWidget(
          requester: storesRequester,
          callBack: (store) {
            saveSelectedStore(context,store);
            refreshData();
          },
        );
      },);
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

  StatisticsParams _params() {
    return StatisticsParams(sellerId: selectedStoreObs.getValue()?.id);
  }

}


