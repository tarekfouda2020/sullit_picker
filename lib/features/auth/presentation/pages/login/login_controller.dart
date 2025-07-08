import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

class LoginController {
  // Form controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  
  // Observable values
  final isLoading = ObsValue<bool>.withInit(false);
  final passwordVisible = ObsValue<bool>.withInit(false);
  
  // Dispose controllers
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
  
  // Toggle password visibility
  void togglePasswordVisibility() {
    passwordVisible.setValue(!passwordVisible.getValue());
  }
  
  // Handle login
  void login(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      isLoading.setValue(true);
      
      // Simulate login API call
      await Future.delayed(const Duration(seconds: 2));
      
      isLoading.setValue(false);
      
      // Navigate to home after successful login
      AutoRouter.of(context).replaceAll([const HomePageRoute()]);
    }
  }
  
  // Form validation
  bool _validateForm() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }
  
  // Field validators
  String? emailValidator(String? value) {
    if (value?.isEmpty == true) {
      return 'البريد الإلكتروني مطلوب';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
      return 'البريد الإلكتروني غير صالح';
    }
    return null;
  }
  
  String? passwordValidator(String? value) {
    if (value?.isEmpty == true) {
      return 'كلمة المرور مطلوبة';
    }
    if (value!.length < 6) {
      return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
    }
    return null;
  }
}
