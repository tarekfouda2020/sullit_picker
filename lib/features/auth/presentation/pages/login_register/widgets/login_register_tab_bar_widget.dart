import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class LoginRegisterTabBarWidget extends StatelessWidget {
  final ObsValue<int> currentTab;
  final Function(int) onTabChanged;

  const LoginRegisterTabBarWidget({
    super.key,
    required this.currentTab,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.colors.greyWhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ObsValueConsumer(
        observable: currentTab,
        builder: (context, currentTabValue) {
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => onTabChanged(0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: currentTabValue == 0 ? context.colors.primary : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: currentTabValue == 0
                          ? [
                              BoxShadow(
                                color: context.colors.primary.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ]
                          : null,
                    ),
                    child: Text(
                      Translate.of(context).label_Login,
                      style: AppTextStyle.s16_w600(
                        color: currentTabValue == 0 ? Colors.white : context.colors.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onTabChanged(1),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: currentTabValue == 1 ? context.colors.primary : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: currentTabValue == 1
                          ? [
                              BoxShadow(
                                color: context.colors.primary.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ]
                          : null,
                    ),
                    child: Text(
                      Translate.of(context).label_register,
                      style: AppTextStyle.s16_w600(
                        color: currentTabValue == 1 ? Colors.white : context.colors.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
} 