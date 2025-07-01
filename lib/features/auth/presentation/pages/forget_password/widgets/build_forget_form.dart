import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import '../forget_password_controller.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordController controller;
  
  const BuildForgetForm({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      controller: controller.emailController,
      fieldTypes: FieldTypes.normal,
      type: TextInputType.emailAddress,
      action: TextInputAction.done,
      validate: (value) => value?.isEmpty == true ? 'البريد الإلكتروني مطلوب' : null,
      label: 'البريد الإلكتروني',
      margin: const EdgeInsets.only(bottom: 20),
    );
  }
}
