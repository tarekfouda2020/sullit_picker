import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/res.dart';
import '../login_controller.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;
  
  const BuildLoginForm({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          // Email field
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: controller.emailValidator,
            controller: controller.emailController,
            margin: const EdgeInsets.only(bottom: 16),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(Res.mobile),
            ),
          ),
          // Password field
          GenericTextField(
            fieldTypes: FieldTypes.password,
            type: TextInputType.visiblePassword,
            action: TextInputAction.done,
            validate: controller.passwordValidator,
            controller: controller.passwordController,
            margin: const EdgeInsets.only(bottom: 16),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(Res.password),
            ),
          ),
        ],
      ),
    );
  }
}
