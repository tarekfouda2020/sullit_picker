import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/subscription/subscription_imports.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';

class SubscriptionController {
  final ObsValue<bool> acceptTerms = ObsValue<bool>.withInit(false);
  final isSubscribed = ObsValue<bool>.withInit(false);
  
  void toggleTermsAcceptance() {
    acceptTerms.setValue(!acceptTerms.getValue());
  }

  
  void paySubscription(BuildContext context) async {
    if (!acceptTerms.getValue()) {
      AppSnackBar.showWarningSnackBar(message: Translate.of(context).please_accept_terms);
      return;
    }

    await Future.delayed(const Duration(seconds: 3));
    isSubscribed.setValue(true);
    AppSnackBar.showSuccessSnackBar(Translate.of(context).payment_successful);
    AutoRouter.of(context).replaceAll([const HomePageRoute()]);
      // AppSnackBar.showWarningSnackBar(message: Translate.of(context).payment_failed_please_try_again);
    }
  }