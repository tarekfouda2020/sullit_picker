import 'login_register_imports.dart';
import 'package:flutter_tdd/generated/l10n.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class LoginRegisterController {
  // Tab management
  final currentTab = ObsValue<int>.withInit(0);
  
  // Login form
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  
  // Register form
  final registerNameController = TextEditingController();
  final registerEmailController = TextEditingController();
  final registerPhoneController = TextEditingController();
  final registerPasswordController = TextEditingController();
  final registerConfirmPasswordController = TextEditingController();
  final registerFormKey = GlobalKey<FormState>();
  
  // Loading states
  final isLoginLoading = ObsValue<bool>.withInit(false);
  final isRegisterLoading = ObsValue<bool>.withInit(false);
  
  // Work type selection (0: one store, 1: many stores, 2: freelance)
  final selectedWorkType = ObsValue<int>.withInit(0);
  
  void switchTab(int index) {
    currentTab.setValue(index);
  }
  
  void setWorkType(int workType) {
    selectedWorkType.setValue(workType);
  }
  
  void login(BuildContext context) async {
    // Validate form first
    // if (!loginFormKey.currentState!.validate()) {
    //   return;
    // }
    
    try {
      isLoginLoading.setValue(true);

      // Simulate API call with realistic delay
      await Future.delayed(const Duration(seconds: 2));

      // Success - Navigate to home
      AutoRouter.of(context).replaceAll([const HomeRoute()]);
      AppSnackBar.showSuccessSnackBar(Translate.of(context).login_successful);
      
    } catch (error) {
      // Handle error
      if (context.mounted) {
        AppSnackBar.showWarningSnackBar(
          message: error.toString().replaceAll('Exception: ', ''),
        );
      }
    } finally {
      isLoginLoading.setValue(false);
    }
  }
  
  void register(BuildContext context) async {
    // Validate form first
    if (!registerFormKey.currentState!.validate()) {
      return;
    }
    
    try {
      isRegisterLoading.setValue(true);

      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      
      // Success - Navigate to subscription
      if (context.mounted) {
        AutoRouter.of(context).push(const SubscriptionRoute());
        AppSnackBar.showSuccessSnackBar(Translate.of(context).registration_successful);
      }
      
    } catch (error) {
      // Handle error
      if (context.mounted) {
        AppSnackBar.showWarningSnackBar(
          message: error.toString().replaceAll('Exception: ', ''),
        );
      }
    } finally {
      isRegisterLoading.setValue(false);
    }
  }
  
  void navigateToForgetPassword(BuildContext context) {
    AutoRouter.of(context).push(const ForgetPasswordRoute());
  }
  
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.email_required;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return S.current.please_enter_valid_email;
    }
    return null;
  }
  
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.password_required;
    }
    if (value.length < 6) {
      return S.current.password_min_characters;
    }
    return null;
  }
  
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.name_required;
    }
    return null;
  }
  
  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.phone_number_required;
    }
    return null;
  }
  
  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.confirm_password_required;
    }
    if (value != registerPasswordController.text) {
      return S.current.passwords_do_not_match;
    }
    return null;
  }
  
  void dispose() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
    registerNameController.dispose();
    registerEmailController.dispose();
    registerPhoneController.dispose();
    registerPasswordController.dispose();
    registerConfirmPasswordController.dispose();
  }
} 