
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'login_view_imports.dart';

class LoginViewController {
  // Login form controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  
  // Observable values
  final ObsValue<bool> loginPasswordVisibleObs = ObsValue<bool>.withInit(false);
  
  // Loading button key
  final GlobalKey<CustomButtonState> loadingButtonKey = GlobalKey<CustomButtonState>();



  // Login method
  void login(BuildContext context) async {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }
    
    loadingButtonKey.currentState?.animateForward();
    
    try {
      // Simulate API call with realistic delay
      await Future.delayed(const Duration(seconds: 2));

      // Success - Navigate to home
      loadingButtonKey.currentState?.animateReverse();
      AutoRouter.of(context).replaceAll([const HomePageRoute()]);
      AppSnackBar.showSuccessSnackBar(Translate.of(context).login_successful);
    } catch (e) {
      loadingButtonKey.currentState?.animateReverse();
      AppSnackBar.showErrorSnackBar(error:BaseError.unknown(msg: "Login Failed"));
    }
  }

  // Navigate to forget password
  void navigateToForgetPassword(BuildContext context) {
    AutoRouter.of(context).push(const ForgetPasswordPageRoute());
  }

  // Switch password visibility
  void switchPasswordVisibility() {
    loginPasswordVisibleObs.setValue(!loginPasswordVisibleObs.getValue());
  }



  // Clear form
  void clearForm() {
    loginEmailController.clear();
    loginPasswordController.clear();
    loginPasswordVisibleObs.setValue(false);
  }

  // Dispose resources
  void dispose() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
  }
}