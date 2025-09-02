
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/range_date_picker_sheet_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'wallet_imports.dart';

class WalletController {
  final TextEditingController amountController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final StoresRequester storesRequester = StoresRequester();
  final ObsValue<StoreModel?> selectedStoreObs = ObsValue<StoreModel?>.withInit(null);
  final ObsValue<TransactionPeriodEnum> selectedTransactionObs =
      ObsValue<TransactionPeriodEnum>.withInit(TransactionPeriodEnum.today);
  final PagingController<int, TransactionsModel> pagingController = PagingController(firstPageKey: 1);
  final PagingController<int, StoreModel> storePagingController = PagingController(firstPageKey: 1);
  final DateRangePickerController roomDateRangeController = DateRangePickerController();
  final ObsValue<int> differenceInDaysObs = ObsValue<int>.withInit(0);
   PickerDateRange? selectedRangeDates;

  PickerDateRange initDateRange() => PickerDateRange(
    DateTime.now().subtract(const Duration(days: 1)),
    DateTime.now(),
  );

  late PayMethodsRequester payRequester;

  final ObsValue<PaymentMethodModel?> selectedPaymentMethodObs = ObsValue.withInit(null);


  WalletController(BuildContext context) {
    // selectedRangeDatesCubit.setValue(initDateRange());
    _getPayMethods(context);
    _setupPagination(context);
  }

  void setDifferenceInDays(){
    if(selectedRangeDates!=null){
      var startDate = selectedRangeDates!.startDate!;
      var endDate = selectedRangeDates!.endDate!;
      var difference = endDate.difference(startDate).inDays;
      differenceInDaysObs.setValue(difference);
    }else{
      differenceInDaysObs.setValue(0);
    }
  }

  void saveDateRanges(BuildContext context){
    Navigator.of(context).pop();
    selectedRangeDates = roomDateRangeController.selectedRange;
    setDifferenceInDays();
    refreshTransactions();
  }

  void cancelDateRanges(BuildContext context){
    Navigator.of(context).pop();
    Future.delayed(const Duration(milliseconds: 100),(){
      selectedRangeDates =_previousRange ?? initDateRange();
      roomDateRangeController.selectedRange = _previousRange ?? initDateRange();
    });
  }

  void resetDateRanges(BuildContext context){
    Navigator.of(context).pop();
    selectedRangeDates = null;
    roomDateRangeController.selectedRange = initDateRange();
    setDifferenceInDays();
    refreshTransactions();
  }

  late PickerDateRange? _previousRange;
  void showDateRangeBottomSheet(BuildContext context) {
    _previousRange = selectedRangeDates ;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return RangeDatePickerSheetWidget(controller: this);
      },
    );
  }

  void _getPayMethods(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    if(userData!.isFreelancer){
      payRequester = PayMethodsRequester(getWalletPayMethod: false);
      payRequester.request(fromRemote: false);
      payRequester.request();
    }
  }

  void _setupPagination(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    pagingController.addPageRequestListener((pageKey) {
      getWalletHistory(pageKey);
    });

    if(userData!.isFreelancer || userData.workWithMultiStore){
      storePagingController.addPageRequestListener((pageKey) {
        getStores(pageKey,refresh: false);
        getStores(pageKey);
      },);
    }
  }

  Future<void> chargeWallet(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    if (selectedPaymentMethodObs.getValue() == null) {
      AppSnackBar.showSimpleToast(
        msg: 'Please select payment method',
      );
      return;
    }
    var params = _chargeWalletParams();
    var result = await getIt<WalletRepositories>().chargeWallet(params);
    result.when(
      isSuccess: (data) async {
        Navigator.pop(context);
        BuildContext ctx = getIt<GlobalContext>().context();
        var result = await AutoRouter.of(ctx).push(PaymentRoute(transactionUrl: data!));
        if (result == true) {
          clearSelectedPayData();
          getIt<UserServicesHelper>().getUserData();
          refreshTransactions();
        }
      },
      isError: (error) {
        // AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: error.message));
      },
    );
  }

  void clearSelectedPayData() {
    amountController.clear();
    selectedPaymentMethodObs.setValue(null);
    for (var element in payRequester.data!) {
      element.isSelected = false;
    }
    payRequester.refresh();
  }

  Future<void> getWalletHistory(int currentPage,{bool refresh = true}) async {
    var params = _params(currentPage, refresh);
    final result = await getIt<WalletRepositories>().transactions(params);
    final isLastPage = (result.data ?? <TransactionsModel>[]).length < ApplicationConstants.paginationLimit;
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


  void showTransactionsPeriodSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
        context: context,
        builder: (context) {
          return TransactionsPeriodBottomSheetWidget(controller: this);
        });
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
              Navigator.pop(context);
              selectedStoreObs.setValue(store);
              selectedStoreObs.refresh();
              refreshTransactions();
            },
          );
        }else{
          return  StoreListWidget(
            onRefresh: (item) {
              Navigator.pop(context);
              selectedStoreObs.setValue(item);
              selectedStoreObs.refresh();
              refreshTransactions();
            },
          );
        }
      },
    );
  }

  void updateTransactionPeriod(TransactionPeriodEnum period, BuildContext context) {
    selectedTransactionObs.setValue(period);
    Navigator.pop(context);
    refreshTransactions();
  }

  void refreshTransactions() {
    pagingController.refresh();
  }

  TransactionsParams _params(int currentPage, bool refresh ) {
    String? fromDate;
    String? toDate;
    if(selectedRangeDates != null){
      fromDate = DateTimeHelper.formatDate(date: selectedRangeDates!.startDate!, formatType:  "yyyy-MM-dd");
      toDate = DateTimeHelper.formatDate(date: selectedRangeDates!.endDate!, formatType:  "yyyy-MM-dd");
    }
    return TransactionsParams(
      sellerId: selectedStoreObs.getValue()?.id,
      paginateParams: _transactionsPaginateParams(refresh, currentPage),
      fromDate:  fromDate,
      toDate: toDate,
    );
  }

  void balanceWithdrawSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return BalanceWithdrawSheet(
          controller: this,
        );
      },
    );
  }

  void rechargeWalletSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody<bool>(
      context: context,
      builder: (context) {
        return RechargeWalletSheet(
          controller: this,
        );
      },
    );
  }

  Future<void> successfullySendRequestDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return const RequestSendSuccessfullyDialog();
      },
    );
    await Future.delayed(const Duration(seconds: 2), () => Navigator.pop(context))
        .then((value) => Navigator.pop(context));
  }

  void chargingWalletPaymentMethodSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return SubscriptionPaySheetWidget(
          requester: payRequester,
          onPressProcess: () {
            var selectedPaymentMethod = payRequester.data!.firstWhereOrNull((element) => element.isSelected == true);
            selectedPaymentMethodObs.setValue(selectedPaymentMethod);
            selectedPaymentMethodObs.refresh();
            Navigator.pop(context);
          },
        );
      },
    );
  }


  GenericPaginateParams _storesPaginateParams(bool refresh, int currentPage){
    return GenericPaginateParams(
        pageSize: ApplicationConstants.paginationLimit,
        refresh: refresh,
        currentPage: currentPage
    );
  }

  GenericPaginateParams _transactionsPaginateParams(bool refresh, int currentPage){
    return GenericPaginateParams(
        pageSize: ApplicationConstants.paginationLimit,
        refresh: refresh,
        currentPage: currentPage
    );
  }

  ChargeWalletParams _chargeWalletParams() => ChargeWalletParams(
    amount: amountController.text,
    paymentKey: selectedPaymentMethodObs.getValue()!.paymentTypeKey,
  );

}
