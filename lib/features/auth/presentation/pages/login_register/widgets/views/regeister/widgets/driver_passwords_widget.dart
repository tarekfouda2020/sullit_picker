
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';

import '../register_controller.dart';

class DriverPasswordsWidget extends StatelessWidget {
  final RegisterController controller;
  const DriverPasswordsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ObsValueConsumer(
          observable: controller.passwordVisibleObs,
          builder: (context,value) {
            return GenericTextField(
              controller: controller.passwordController,
              validate: (value) => value?.validatePassword(),
              fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.next,
              hint: S.of(context).enter_your_password,
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
        Gaps.vGap12,
        AuthSectionTitleWidget(title: Translate.s.confirm_password),
        ObsValueConsumer(
          observable: controller.confirmPasswordVisibleObs ,
          builder: (context,value) {
            return GenericTextField(
              controller: controller.confirmPasswordController,
              validate: (value) => value?.validatePasswordConfirm(pass: controller.passwordController.text),
              fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.done,
              hint: S.of(context).enter_your_password,
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
    );
  }
}
