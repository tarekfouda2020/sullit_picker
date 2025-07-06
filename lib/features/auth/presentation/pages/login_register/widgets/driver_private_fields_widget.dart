import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';
class DriverPrivateFieldsWidget extends StatelessWidget {
  final LoginRegisterController controller;

  const DriverPrivateFieldsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthSectionTitleWidget(title: Translate.s.user_name),
        GenericTextField(
          controller: controller.registerNameController,
          validate: (value) => value?.validateName(),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          hint: S.of(context).enter_user_name,
          fillColor: Colors.white,
          enableBorderColor: context.colors.inputBorder,
          hintColor: context.colors.hintText,
        ),
        Gaps.vGap12,
        DriverPhoneWidget(controller: controller),
        Gaps.vGap12,
        AuthSectionTitleWidget(title: Translate.s.e_mail),
        GenericTextField(
          controller: controller.registerEmailController,
          validate: (value) => value?.validateEmail(),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.emailAddress,
          action: TextInputAction.next,
          hint: S.of(context).enter_your_e_mail,
          fillColor: Colors.white,
          enableBorderColor: context.colors.inputBorder,
          focusBorderColor: context.colors.primary,
          hintColor: context.colors.hintText,
          radius: BorderRadius.circular(30),
          suffixIcon: VerifyTextWidget(title: Translate.s.verify_your_e_mail, onTap: () {  },),
        ),
        Gaps.vGap24,
      ],
    );
  }
}
