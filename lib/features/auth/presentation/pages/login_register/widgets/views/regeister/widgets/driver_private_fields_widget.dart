import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/widgets/views/regeister/widgets/driver_phone_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/widgets/views/regeister/widgets/verify_text_widget.dart';

import '../register_imports.dart';
class DriverPrivateFieldsWidget extends StatelessWidget {
  final RegisterController controller;

  const DriverPrivateFieldsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthSectionTitleWidget(title: Translate.s.user_name),
        GenericTextField(
          controller: controller.nameController,
          validate: (value) => value?.validateName(),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          hint: Translate.s.enter_user_name,
          fillColor: context.colors.white,
          enableBorderColor: context.colors.inputBorder,
          hintColor: context.colors.hintText,
        ),
        Gaps.vGap12,
        DriverPhoneWidget(controller: controller),
        Gaps.vGap12,
        AuthSectionTitleWidget(title: Translate.s.e_mail),
        GenericTextField(
          controller: controller.emailController,
          validate: (value) => value?.validateEmail(),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.emailAddress,
          action: TextInputAction.next,
          hint: Translate.s.enter_your_e_mail,
          fillColor: context.colors.white,
          enableBorderColor: context.colors.inputBorder,
          focusBorderColor: context.colors.primary,
          hintColor: context.colors.hintText,
          radius: BorderRadius.circular(30),
          suffixIcon:  VerifyTextWidget(
            title: Translate.s.verify_your_e_mail,
            onTap: () => controller.verifyEmail(context),
          ),
        ),
        Gaps.vGap24,
      ],
    );
  }

}
