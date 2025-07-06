import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';

class LoginFormWidget extends StatelessWidget {
  final LoginRegisterController controller;

  const LoginFormWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthSectionTitleWidget(title: Translate.of(context).e_mail,),
          GenericTextField(
            controller: controller.loginEmailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            fillColor: Colors.white,
            margin: const EdgeInsets.only(top: 5),
            validate: (value) => value?.validateEmail(),
            hint: Translate.of(context).enter_your_e_mail,
          ),
         Gaps.vGap12,
          AuthSectionTitleWidget(title:  Translate.of(context).password,),
          ObsValueConsumer(
            observable: controller.loginPasswordVisibleObs,
            builder: (context,isVisible) {
              return GenericTextField(
                controller: controller.loginPasswordController,
                fieldTypes: isVisible ? FieldTypes.normal : FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: Colors.white,
                margin: Dimens.paddingTop5 ,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                validate: (value) => value?.validatePassword(),
                hint: Translate.of(context).enter_your_password,
                suffixIcon: GestureDetector(
                  onTap: () => controller.switchPasswordVisibility(controller.loginPasswordVisibleObs),
                  child: Icon(
                    isVisible ?Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: context.colors.hintText,
                    size: 20,
                  ),
                ),
              );
            }
          ),
          Center(
            child: LoadingButton(
                title: Translate.of(context).login,
                onTap: () => controller.login(context),
                btnKey: controller.loadingButtonKey,
              margin: const EdgeInsets.only(top: 28),
            ),
          ),
          Gaps.vGap24,
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