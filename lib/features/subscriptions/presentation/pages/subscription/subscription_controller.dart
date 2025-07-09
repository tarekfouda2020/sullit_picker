
import 'subscription_imports.dart';

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