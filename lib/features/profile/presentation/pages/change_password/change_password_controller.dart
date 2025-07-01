import 'change_password_imports.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';

class ChangePasswordController {
  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isLoading = ObsValue<bool>.withInit(false);
  
  void changePassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      isLoading.setValue(true);
      await Future.delayed(const Duration(seconds: 2));
      isLoading.setValue(false);
      
      AppSnackBar.showSuccessSnackBar(Translate.of(context).change_password_success);

      AutoRouter.of(context).pop();
    }
  }
  
  String? validateCurrentPassword(String? value) {
    if (value == null || value.isEmpty) {
      return Translate.s.current_password_required;
    }
    return null;
  }
  
  String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return Translate.s.new_password_required;
    }
    if (value.length < 6) {
      return Translate.s.password_min_length;
    }
    return null;
  }
  
  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return Translate.s.confirm_password_required;
    }
    if (value != newPasswordController.text) {
      return Translate.s.passwords_not_match;
    }
    return null;
  }
  
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
  }
} 