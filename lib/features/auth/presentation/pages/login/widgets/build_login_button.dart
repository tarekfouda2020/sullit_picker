import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import '../login_controller.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginController controller;
  
  const BuildLoginButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<bool>(
      observable: controller.isLoading,
      builder: (context, isLoading) => AppTextButton.maxPrimary(
        onPressed: isLoading ? null : () => controller.login(context),
        text: 'تسجيل الدخول',
        enabled: !isLoading,
      ),
    );
  }
}
