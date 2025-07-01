import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';

class ForgetPasswordController {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isLoading = ObsValue<bool>.withInit(false);
  
  void sendResetEmail(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      isLoading.setValue(true);
      
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      
      isLoading.setValue(false);
      
      // Show success message and go back to login
      AppSnackBar.showSuccessSnackBar(Translate.of(context).reset_password_link_sent);
      
      AutoRouter.of(context).pop();
    }
  }
  
  void backToLogin(BuildContext context) {
    AutoRouter.of(context).pop();
  }
  
  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return Translate.s.fillField;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return Translate.s.mailValidation;
    }
    return null;
  }
  
  void dispose() {
    emailController.dispose();
  }
}