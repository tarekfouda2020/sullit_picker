

import 'wallet_imports.dart';

class WalletController {

  final StoresRequester storesRequester = StoresRequester();

  final ObsValue<StoreModel?> selectedStoreObs = ObsValue<StoreModel?>.withInit(null);

  final ObsValue<TransactionPeriodEnum> selectedTransactionObs = ObsValue<TransactionPeriodEnum>.withInit(TransactionPeriodEnum.today);

  final PagingController<int, TransactionsModel> pagingController = PagingController(firstPageKey: 1);

  WalletController(){
    storesRequester.request();
    _setupPagination();
  }

  void _setupPagination() {
    pagingController.addPageRequestListener((pageKey) {
      _getWalletHistory(pageKey);
    });
  }


  Future<void> _getWalletHistory(int currentPage) async {
    var params = _params(currentPage);
    final result = await getIt<WalletRepositories>().transactions(params);
    final isLastPage = (result.data ?? <TransactionsModel>[]).length < ApplicationConstants.paginationLimit;
    if (currentPage == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(result.data??[]);
    } else {
      final nextPageKey = currentPage + 1;
      pagingController.appendPage(result.data ?? [], nextPageKey);
    }
  }


  Future<void> fetchTransactions() async {
    await getIt<WalletRepositories>().transactions(_params(0));
  }

  void showTransactionsPeriodSheet(BuildContext context){
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
      return TransactionsPeriodBottomSheetWidget(controller: this);
    });
  }


  void showStoresSheet(BuildContext context){
    AppBottomSheets.showScrollableBody(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
      return StoresBottomSheetWidget(
        requester: storesRequester,
        callBack: (store) {
          Navigator.pop(context);
          selectedStoreObs.setValue(store);
          selectedStoreObs.refresh();
          refreshTransactions();
        },
      );
    },);
  }

  void updateTransactionPeriod(TransactionPeriodEnum period,BuildContext context){
    selectedTransactionObs.setValue(period);
    Navigator.pop(context);
    refreshTransactions();
  }

  void refreshTransactions() {
    pagingController.refresh();
  }


  TransactionsParams _params(page){
    return TransactionsParams(
      transactionTime: selectedTransactionObs.getValue(),
      sellerId: selectedStoreObs.getValue()?.id,
      page: page
    );
  }

  void dispose() {
    pagingController.dispose();
  }

}


