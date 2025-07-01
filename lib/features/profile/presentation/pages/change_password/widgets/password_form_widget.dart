import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import '../change_password_controller.dart';

class PasswordFormWidget extends StatelessWidget {
  final ChangePasswordController controller;

  const PasswordFormWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: controller.currentPasswordController,
            validate: (value) => controller.validateCurrentPassword(value),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.next,
            label: Translate.of(context).current_password,
            prefixIcon: const Icon(Icons.lock_outline),
          ),
          const SizedBox(height: 16),
          GenericTextField(
            controller: controller.newPasswordController,
            validate: (value) => controller.validateNewPassword(value),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.next,
            label: Translate.of(context).new_password,
            prefixIcon: const Icon(Icons.lock_outline),
          ),
          const SizedBox(height: 16),
          GenericTextField(
            controller: controller.confirmPasswordController,
            validate: (value) => controller.validateConfirmPassword(value),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            label: Translate.of(context).confirm_new_password,
            prefixIcon: const Icon(Icons.lock_outline),
          ),
        ],
      ),
    );
  }
} 