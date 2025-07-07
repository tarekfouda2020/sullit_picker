import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../forget_password_imports.dart';

class ForgetFormWidget extends StatelessWidget {
  final ForgetPasswordController controller;
  
  const ForgetFormWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: GenericTextField(
        controller: controller.emailController,
        fieldTypes: FieldTypes.normal,
        type: TextInputType.emailAddress,
        action: TextInputAction.done,
        fillColor: context.colors.white,
        validate: (value) => value?.validateEmail(),
        hint: Translate.of(context).enter_your_e_mail,
      ),
    );
  }
}
