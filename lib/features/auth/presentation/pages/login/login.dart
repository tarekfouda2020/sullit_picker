import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'login_controller.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController controller = LoginController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: context.colors.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Gaps.hGap8,
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: context.colors.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    Gaps.vGap16,
                    Text(
                      Translate.of(context).app_name,
                      style: AppTextStyle.s24_w700(color: context.colors.primary),
                    ),
                    Gaps.vGap32,
                    Text(
                      Translate.of(context).welcome_message,
                      style: AppTextStyle.s16_w400(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Gaps.vGap32,
                    
                    // Login/Register Toggle
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: context.colors.primary,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                Translate.of(context).label_Login,
                                style: AppTextStyle.s16_w700(color: context.colors.primary),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => AutoRouter.of(context).push(const Register()),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.shade300,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  Translate.of(context).label_register,
                                  style: AppTextStyle.s16_w400(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    Gaps.vGap32,
                    
                    // Email Field
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Translate.of(context).label_email,
                          style: AppTextStyle.s14_w400(color: Colors.black),
                        ),
                        Gaps.vGap8,
                        GenericTextField(
                          controller: controller.emailController,
                          validate: (value) => null,
                          fieldTypes: FieldTypes.normal,
                          type: TextInputType.emailAddress,
                          action: TextInputAction.next,
                          hint: Translate.of(context).enter_your_email,
                        ),
                      ],
                    ),
                    
                    Gaps.vGap16,
                    
                    // Password Field
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Translate.of(context).label_password,
                          style: AppTextStyle.s14_w400(color: Colors.black),
                        ),
                        Gaps.vGap8,
                        ObsValueConsumer(
                          observable: controller.passwordVisible,
                          builder: (context, isVisible) => GenericTextField(
                            controller: controller.passwordController,
                            validate: (value) => null,
                            fieldTypes: isVisible ? FieldTypes.normal : FieldTypes.password,
                            type: TextInputType.text,
                            action: TextInputAction.done,
                            hint: Translate.of(context).enter_your_password,
                            suffixIcon: IconButton(
                              icon: Icon(
                                isVisible ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: controller.togglePasswordVisibility,
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    Gaps.vGap32,
                    
                    // Login Button
                    ObsValueConsumer(
                      observable: controller.isLoading,
                      builder: (context, loading) => SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: loading ? null : () => controller.login(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.colors.primary,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: loading
                              ? const CircularProgressIndicator(color: Colors.white)
                              : Text(
                                  Translate.of(context).label_Login,
                                  style: AppTextStyle.s16_w700(color: Colors.white),
                                ),
                        ),
                      ),
                    ),
                    
                    Gaps.vGap16,
                    
                    // Forget Password
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(const ForgetPasswordRoute());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: '${Translate.of(context).forgot_password} ',
                          style: AppTextStyle.s14_w400(color: Colors.black),
                          children: [
                            TextSpan(
                              text: Translate.of(context).restore,
                              style: AppTextStyle.s14_w600(color: context.colors.primary),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
