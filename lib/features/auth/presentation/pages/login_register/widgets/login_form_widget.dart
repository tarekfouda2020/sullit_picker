import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import '../login_register_controller.dart';

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
          // Email Field
          Text(
            Translate.of(context).e_mail,
            style: AppTextStyle.s14_w600(color: context.colors.textLabel),
          ),
          const SizedBox(height: 8),
          GenericTextField(
            controller: controller.loginEmailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            fillColor: Colors.white,
            label: Translate.of(context).e_mail,
            margin: const EdgeInsets.only(right: 16, left: 16, top: 24),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            validate: (value) => controller.validateEmail(value),
            hint: Translate.of(context).enter_your_e_mail,
          ),
          
          const SizedBox(height: 24),
          
          // Password Field
          Text(
            Translate.of(context).password,
            style: AppTextStyle.s14_w600(color: context.colors.textLabel),
          ),
          const SizedBox(height: 8),
          GenericTextField(
            controller: controller.loginPasswordController,
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            fillColor: Colors.white,
            label: Translate.of(context).password,
            margin: const EdgeInsets.only(right: 16, left: 16, top: 24),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            validate: (value) => controller.validatePassword(value),
            hint: Translate.of(context).enter_your_password,
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: context.colors.hintText,
              size: 20,
            ),
          ),
          
          const SizedBox(height: 40),
          
          // Login Button
          ObsValueConsumer(
            observable: controller.isLoginLoading,
            builder: (context, isLoading) {
              return SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: isLoading ? null : () => controller.login(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.colors.primary,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : Text(
                          Translate.of(context).login,
                          style: AppTextStyle.s16_w600(color: Colors.white),
                        ),
                ),
              );
            },
          ),
          
          const SizedBox(height: 24),
          
          // Forgot Password
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
          
          const SizedBox(height: 40),
        ],
      ),
    );
  }
} 