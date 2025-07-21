import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../confirm_reset_password_imports.dart';


class ResetPasswordFormWidget extends StatelessWidget {
  final ConfirmResetPasswordController controller;
  const ResetPasswordFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AuthSectionTitleWidget(title: "Code"),
          GenericTextField(
            controller: controller.codeController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            hint: "Enter code",
            validate: (value) => value?.validateEmpty(),
          ),
          Gaps.vGap16,
          const AuthSectionTitleWidget(title: "Password"),
          ObsValueConsumer(
              observable: controller.passwordVisibleObs,
              builder: (context,value) {
                return GenericTextField(
                  controller: controller.passwordController,
                  validate: (value) => value?.validatePassword(),
                  fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  hint: Translate.s.enter_your_password,
                  fillColor: Colors.white,
                  enableBorderColor: context.colors.inputBorder,
                  focusBorderColor: context.colors.primary,
                  hintColor: context.colors.hintText,
                  radius: BorderRadius.circular(30),
                  suffixIcon: GestureDetector(
                    onTap: () => controller.switchPasswordVisibility(controller.passwordVisibleObs),
                    child: Icon(
                      value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: context.colors.hintText,
                      size: 20,
                    ),
                  ),
                );
              }
          ),
          Gaps.vGap16,
          const AuthSectionTitleWidget(title: "Confirm Password"),
          ObsValueConsumer(
              observable: controller.confirmPasswordVisibleObs ,
              builder: (context,value) {
                return GenericTextField(
                  controller: controller.confirmPasswordController,
                  validate: (value) => value?.validatePasswordConfirm(pass: controller.passwordController.text),
                  fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  hint: Translate.s.enter_your_password,
                  fillColor: Colors.white,
                  enableBorderColor: context.colors.inputBorder,
                  focusBorderColor: context.colors.primary,
                  hintColor: context.colors.hintText,
                  suffixIcon: GestureDetector(
                    onTap: () => controller.switchPasswordVisibility(controller.confirmPasswordVisibleObs),
                    child: Icon(
                      value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: context.colors.hintText,
                      size: 20,
                    ),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}
