import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import '../login_register_controller.dart';

class RegisterTabWidget extends StatelessWidget {
  final LoginRegisterController controller;

  const RegisterTabWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Form(
        key: controller.registerFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            
            // Name field
            GenericTextField(
              controller: controller.registerNameController,
              validate: (value) => controller.validateName(value),
              fieldTypes: FieldTypes.normal,
              type: TextInputType.name,
              action: TextInputAction.next,
              label: Translate.of(context).label_full_name,
              prefixIcon: const Icon(Icons.person_outline),
            ),
            const SizedBox(height: 16),
            
            // Email field
            GenericTextField(
              controller: controller.registerEmailController,
              validate: (value) => controller.validateEmail(value),
              fieldTypes: FieldTypes.normal,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              label: Translate.of(context).label_email,
              prefixIcon: const Icon(Icons.email_outlined),
            ),
            const SizedBox(height: 16),
            
            // Phone field
            GenericTextField(
              controller: controller.registerPhoneController,
              validate: (value) => controller.validatePhone(value),
              fieldTypes: FieldTypes.normal,
              type: TextInputType.phone,
              action: TextInputAction.next,
              label: Translate.of(context).label_phone,
              prefixIcon: const Icon(Icons.phone_outlined),
            ),
            const SizedBox(height: 16),
            
            // Password field
            GenericTextField(
              controller: controller.registerPasswordController,
              validate: (value) => controller.validatePassword(value),
              fieldTypes: FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.next,
              label: Translate.of(context).label_password,
              prefixIcon: const Icon(Icons.lock_outline),
            ),
            const SizedBox(height: 16),
            
            // Confirm password field
            GenericTextField(
              controller: controller.registerConfirmPasswordController,
              validate: (value) => controller.validateConfirmPassword(value),
              fieldTypes: FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.done,
              label: Translate.of(context).label_confirm_password,
              prefixIcon: const Icon(Icons.lock_outline),
            ),
            const SizedBox(height: 32),
            
            // Enhanced Register button with loading animation
            ObsValueConsumer(
              observable: controller.isRegisterLoading,
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
                              controller.register(context);
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
                                        Icons.person_add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        Translate.of(context).label_register,
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
          ],
        ),
      ),
    );
  }
} 