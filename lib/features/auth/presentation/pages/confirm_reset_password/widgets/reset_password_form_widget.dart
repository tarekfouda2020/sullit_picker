import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/password_suffix_icon_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_section_title_widget.dart';
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
          AuthSectionTitleWidget(title: Translate.of(context).code),
          GenericTextField(
            controller: controller.codeController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            hint: Translate.of(context).enter_code,
            validate: (value) => value?.validateEmpty(),
            fillColor: context.colors.white,
          ),
          Gaps.vGap16,
          AuthSectionTitleWidget(title: Translate.of(context).password),
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
                  suffixIcon: PasswordSuffixIconWidget(
                    onTap:()=> controller.switchPasswordVisibility(controller.passwordVisibleObs) ,
                    value: value,
                  ),
                );
              }
          ),
          Gaps.vGap16,
          AuthSectionTitleWidget(title: Translate.of(context).confirm_password),
          ObsValueConsumer(
              observable: controller.confirmPasswordVisibleObs ,
              builder: (context,value) {
                return GenericTextField(
                  controller: controller.confirmPasswordController,
                  validate: (value) => value?.validatePasswordConfirm(pass: controller.passwordController.text),
                  fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
                  type: TextInputType.text,
                  action: TextInputAction.send,
                  onTab: () => controller.onPressSend(context),
                  hint: Translate.s.enter_your_password,
                  fillColor: Colors.white,
                  enableBorderColor: context.colors.inputBorder,
                  focusBorderColor: context.colors.primary,
                  hintColor: context.colors.hintText,
                  suffixIcon:  PasswordSuffixIconWidget(
                    onTap:()=> controller.switchPasswordVisibility(controller.confirmPasswordVisibleObs) ,
                    value: value,
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}
