import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/features/subscriptions/domain/entity/plan_payment_params.dart';
import 'package:flutter_tdd/features/subscriptions/domain/repositories/subscription_repositories.dart';
import 'package:flutter_tdd/features/subscriptions/domain/requester/current_subscription_requester.dart';
import 'package:flutter_tdd/features/subscriptions/domain/requester/pay_methods_requester.dart';
import 'package:flutter_tdd/features/subscriptions/presentation/pages/subscription/widgets/subscription_pay_sheet_widget.dart';

import 'my_subscription_imports.dart';


class MySubscriptionController {

  final CurrentSubscriptionRequester currentPlanRequester = CurrentSubscriptionRequester();

  late final PayMethodsRequester payRequester;

  MySubscriptionController(){
    payRequester = PayMethodsRequester(getWalletPayMethod: true);
    getCurrentPlan();

  }

  void getPayMethods()  {
    payRequester.request(fromRemote: false);
    payRequester.request();
  }


  Future<void> getCurrentPlan()async{
    currentPlanRequester.request(fromRemote: false);
    await currentPlanRequester.request();
    bool isSubscribed = currentPlanRequester.data?.subscribed ?? true;
    if(!isSubscribed){
      getPayMethods();
    }
  }

  void showPaymentSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
        context: context,
        builder: (context) {
          return SubscriptionPaySheetWidget(
            requester: payRequester,
            onPressProcess: () => renewSubscription(context),
          );
        });
  }


  Future<void> renewSubscription(BuildContext context) async {
    Navigator.pop(context);
    var params = _paymentParams();
    final result = await getIt<SubscriptionRepositories>().payForSubscription(params);
    result.when(
      isSuccess: (data) {
        AppSnackBar.showSuccessSnackBar(Translate.s.payment_successful);
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: Translate.s.payment_failed_please_try_again));
      },
    );
  }

  PlanPaymentParams _paymentParams() {
    var selectedMethod = payRequester.data!.firstWhere((e) => e.isSelected!);
    return PlanPaymentParams(paymentMethod: selectedMethod.paymentType,showLoading: true);
  }

}