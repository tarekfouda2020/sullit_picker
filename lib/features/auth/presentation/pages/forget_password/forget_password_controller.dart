import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';

class ForgetPasswordController {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<CustomButtonState> loadingButtonKey = GlobalKey<CustomButtonState>();


  void sendResetEmail(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      loadingButtonKey.currentState?.animateForward();
      await Future.delayed(const Duration(seconds: 2));
      loadingButtonKey.currentState?.animateReverse();
      AppSnackBar.showSuccessSnackBar(Translate.s.reset_password_link_sent);
      AutoRouter.of(context).maybePop();
    }
  }
  
  void backToLogin(BuildContext context) {
    AutoRouter.of(context).maybePop();
  }

  void dispose() {
    emailController.dispose();
  }
}