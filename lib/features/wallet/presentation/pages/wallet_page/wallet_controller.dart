import 'package:collection/collection.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/payment_method_model/payment_method_model.dart';
import 'package:flutter_tdd/features/wallet/domain/entity/charge_wallet_params.dart';
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/balance_withdraw_sheet.dart';
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/request_send_successfully_dialog.dart';

import '../../../../../core/errors/base_error.dart';
import '../../../../../core/helpers/app_snack_bar_service.dart';
import '../../../../subscriptions/domain/requester/pay_methods_requester.dart';
import '../../../../subscriptions/presentation/widgets/subscription_pay_sheet_widget.dart';
import 'wallet_imports.dart';

class WalletController {
  final TextEditingController amountController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final StoresRequester storesRequester = StoresRequester();
  final ObsValue<StoreModel?> selectedStoreObs = ObsValue<StoreModel?>.withInit(null);
  final ObsValue<TransactionPeriodEnum> selectedTransactionObs =
      ObsValue<TransactionPeriodEnum>.withInit(TransactionPeriodEnum.today);
  final PagingController<int, TransactionsModel> pagingController = PagingController(firstPageKey: 1);

  late PayMethodsRequester payRequester;

  final ObsValue<PaymentMethodModel?> selectedPaymentMethodObs = ObsValue.withInit(null);

  void getPayMethods() {
    payRequester = PayMethodsRequester(getWalletPayMethod: false);
    payRequester.request(fromRemote: false);
    payRequester.request();
  }

  WalletController() {
    getPayMethods();
    storesRequester.request();
    _setupPagination();
  }

  void _setupPagination() {
    pagingController.addPageRequestListener((pageKey) {
      _getWalletHistory(pageKey);
    });
  }

  Future<void> chargeWallet(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      // if (formKey.currentState!.validate() == false) {
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
      isSuccess: (data) {
        AppSnackBar.showSuccessSnackBar('Payment successful');
        AutoRouter.of(context).push(PaymentRoute(transactionUrl: data!));
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: error.message));
      },
    );
  }

  ChargeWalletParams _chargeWalletParams() => ChargeWalletParams(
        amount: amountController.text,
        paymentKey: selectedPaymentMethodObs.getValue()!.paymentTypeKey,
      );

  Future<void> _getWalletHistory(int currentPage) async {
    var params = _params(currentPage);
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

  Future<void> fetchTransactions() async {
    await getIt<WalletRepositories>().transactions(_params(0));
  }

  void showTransactionsPeriodSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
        context: context,
        builder: (context) {
          return TransactionsPeriodBottomSheetWidget(controller: this);
        });
  }

  void showStoresSheet(BuildContext context) {
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

  TransactionsParams _params(page) {
    return TransactionsParams(
        transactionTime: selectedTransactionObs.getValue(), sellerId: selectedStoreObs.getValue()?.id, page: page);
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
    AppBottomSheets.showScrollableBody(
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
}
