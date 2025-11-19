
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/password_suffix_icon_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_view/login_view_controller.dart';

import '../../../../../../core/helpers/export.dart';
import '../../../widgets/auth_section_title_widget.dart';

class LoginFormWidget extends StatelessWidget {
  final LoginViewController controller;
  const LoginFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthSectionTitleWidget(title: Translate.of(context).user_name,),
          GenericTextField(
              controller: controller.usernameController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              fillColor: Colors.white,
              margin: const EdgeInsets.only(top: 5),
              validate: (value) => value?.validateName(),
              hint: Translate.of(context).enter_your_name
          ),
          Gaps.vGap12,
          AuthSectionTitleWidget(title:  Translate.of(context).password,),
          ObsValueConsumer(
              observable: controller.passwordVisibleObs,
              builder: (context,isVisible) {
                return GenericTextField(
                  controller: controller.passwordController,
                  fieldTypes: isVisible ? FieldTypes.normal : FieldTypes.password,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  fillColor: Colors.white,
                  margin: Dimens.paddingTop5 ,
                  onSubmit: () => controller.callLogin(context),
                  validate: (value) => value?.validatePassword(),
                  hint: Translate.of(context).enter_your_password,
                  suffixIcon: PasswordSuffixIconWidget(
                    onTap:()=> controller.switchPasswordVisibility() ,
                    value: isVisible,
                  ),
                );
              }
          ),
          Gaps.vGap28,
          Center(
            child: AppTextButton.maxCustom(
              text: Translate.of(context).login,
              onPressed: () => controller.callLogin(context),
            ),
          ),
          Gaps.vGap30,
          Center(
            child: GestureDetector(
              onTap: () => controller.navigateToForgetPassword(context),
              child: RichText(
                text: TextSpan(
                  text: '${Translate.of(context).forgot_password} ',
                  style: AppTextStyle.s14_w400(color: context.colors.textSubtle),
                  children: [
                    TextSpan(
                      text: Translate.of(context).restore,
                      style: AppTextStyle.s14_w600(color: context.colors.primary),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
