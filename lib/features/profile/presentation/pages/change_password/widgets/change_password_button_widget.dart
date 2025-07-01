import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import '../change_password_controller.dart';

class ChangePasswordButtonWidget extends StatelessWidget {
  final ChangePasswordController controller;

  const ChangePasswordButtonWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.isLoading,
      builder: (context, isLoading) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: isLoading ? null : () => controller.changePassword(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: context.colors.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : Text(Translate.of(context).change_password, style: AppTextStyle.s16_w600(color: Colors.white)),
          ),
        );
      },
    );
  }
} 