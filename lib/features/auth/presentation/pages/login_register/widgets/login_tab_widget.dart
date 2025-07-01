import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/res.dart';
import 'social_login_button_widget.dart';
import '../login_register_controller.dart';

class LoginTabWidget extends StatelessWidget {
  final LoginRegisterController controller;

  const LoginTabWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Form(
        key: controller.loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            
            // Email field with modern design
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Translate.of(context).label_email,
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
                const SizedBox(height: 8),
                GenericTextField(
                  controller: controller.loginEmailController,
                  validate: (value) => controller.validateEmail(value),
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.emailAddress,
                  action: TextInputAction.next,
                  hint: Translate.of(context).enter_your_email,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: context.colors.textSecondary,
                    size: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Password field with modern design
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Translate.of(context).label_password,
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
                const SizedBox(height: 8),
                GenericTextField(
                  controller: controller.loginPasswordController,
                  validate: (value) => controller.validatePassword(value),
                  fieldTypes: FieldTypes.password,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  hint: Translate.of(context).enter_your_password,
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: context.colors.textSecondary,
                    size: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            
            // Forget password with better alignment
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => controller.navigateToForgetPassword(context),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                child: Text(
                  Translate.of(context).forgot_password_question,
                  style: AppTextStyle.s14_w500(color: context.colors.primary),
                ),
              ),
            ),
            const SizedBox(height: 32),
            
            // Enhanced Login button with loading animation
            ObsValueConsumer(
              observable: controller.isLoginLoading,
              builder: (context, isLoading) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: isLoading 
                        ? LinearGradient(
                            colors: [
                              context.colors.primary.withValues(alpha: 0.7),
                              context.colors.primary.withValues(alpha: 0.5),
                            ],
                          )
                        : LinearGradient(
                            colors: [
                              context.colors.primary,
                              context.colors.primary.withValues(alpha: 0.8),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                    boxShadow: isLoading 
                        ? []
                        : [
                            BoxShadow(
                              color: context.colors.primary.withValues(alpha: 0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                              spreadRadius: 0,
                            ),
                          ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: isLoading 
                          ? null 
                          : () {
                              // Add haptic feedback
                              HapticFeedback.lightImpact();
                              controller.login(context);
                            },
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            transitionBuilder: (Widget child, Animation<double> animation) {
                              return ScaleTransition(
                                scale: animation,
                                child: FadeTransition(
                                  opacity: animation,
                                  child: child,
                                ),
                              );
                            },
                            child: isLoading
                                ? SizedBox(
                                    key: const ValueKey('loading'),
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.5,
                                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                                      backgroundColor: Colors.white.withValues(alpha: 0.3),
                                    ),
                                  )
                                : Row(
                                    key: const ValueKey('text'),
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.login,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        Translate.of(context).label_Login,
                                        style: AppTextStyle.s16_w700(color: Colors.white),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            
            const SizedBox(height: 32),
            
            // Divider with "أو" text
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: context.colors.borderColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    Translate.of(context).or,
                    style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: context.colors.borderColor,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 24),
            
            // Social login buttons
            SocialLoginButtonWidget(
              icon: Res.apple,
              text: Translate.of(context).continue_with_apple,
              onTap: () {
                HapticFeedback.lightImpact();
                // Handle Apple login
              },
            ),
            
            const SizedBox(height: 12),
            
            SocialLoginButtonWidget(
              icon: Res.google,
              text: Translate.of(context).continue_with_google,
              onTap: () {
                HapticFeedback.lightImpact();
                // Handle Google login
              },
            ),
            
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
} 