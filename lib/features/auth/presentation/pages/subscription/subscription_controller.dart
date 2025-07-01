import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/subscription/subscription_imports.dart';
import 'package:flutter_tdd/generated/l10n.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';

class SubscriptionController {
  final isLoading = ObsValue<bool>.withInit(false);
  final acceptTerms = ObsValue<bool>.withInit(false);
  final selectedPlan = ObsValue<String>.withInit('yearly'); // 'monthly' or 'yearly'
  final isSubscribed = ObsValue<bool>.withInit(false);
  
  void toggleTermsAcceptance() {
    acceptTerms.setValue(!acceptTerms.getValue());
  }
  
  void selectPlan(String plan) {
    selectedPlan.setValue(plan);
  }
  
  void paySubscription(BuildContext context) async {
    if (!acceptTerms.getValue()) {
      AppSnackBar.showWarningSnackBar(message: Translate.of(context).please_accept_terms);
      return;
    }

    isLoading.setValue(true);
    
    // Simulate payment processing
    await Future.delayed(const Duration(seconds: 3));
    
    isLoading.setValue(false);
    
    // Simulate payment success/failure
    if (DateTime.now().millisecond % 2 == 0) {
      // Payment successful
      isSubscribed.setValue(true);
      
      // Show success message
      AppSnackBar.showSuccessSnackBar(Translate.of(context).payment_successful);
      
      // Navigate back or to next screen
      Navigator.of(context).pop();
    } else {
      // Payment failed
      
      // Show error message
      AppSnackBar.showWarningSnackBar(message: Translate.of(context).payment_failed_please_try_again);
    }
  }
} 