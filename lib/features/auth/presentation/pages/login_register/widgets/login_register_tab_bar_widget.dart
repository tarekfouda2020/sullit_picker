import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_controller.dart';

class LoginRegisterTabBarWidget extends StatelessWidget {
final LoginRegisterController controller;

  const LoginRegisterTabBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric( vertical: 16),
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          decoration: BoxDecoration(
            color: context.colors.white,
            border: Border.all(color: context.colors.borderLight),
            borderRadius: Dimens.borderRadius30PX,
          ),
          child: ObsValueConsumer(
            observable: controller.currentTabObs,
            builder: (context, value) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child : AppTextButton.minCustom(
                        text: Translate.of(context).label_Login,
                        onPressed: ()=> controller.switchTab(0),
                        maxHeight: 34,
                        borderRadius: Dimens.borderRadius30PX,
                        bgColor: value == 0
                            ?context.colors.primary
                            :Colors.transparent,
                        txtColor: value == 0
                            ?context.colors.white
                            :context.colors.gray58
                    ),
                  ),
                  Flexible(
                    child : AppTextButton.minCustom(
                      text: Translate.of(context).label_register,
                        borderRadius: Dimens.borderRadius30PX,
                      maxHeight: 34,
                      onPressed: ()=> controller.switchTab(1),
                      bgColor: value == 1
                          ?context.colors.primary
                          :Colors.transparent,
                      txtColor: value == 1
                          ?context.colors.white
                          :context.colors.gray58
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
} 