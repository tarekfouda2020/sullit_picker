import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/res.dart';

class LoginRegisterHeaderWidget extends StatelessWidget {
  const LoginRegisterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 60, 24, 40),
      child: Column(
        children: [
          // App logo with background
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: context.colors.primary.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: SvgPicture.asset(
              Res.appLogo,
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(height: 24),
          
          // App name with modern typography
          Text(
            Translate.of(context).app_name,
            style: AppTextStyle.s28_w700(color: context.colors.textPrimary),
          ),
          const SizedBox(height: 8),
          
          // Welcome subtitle
          Text(
            Translate.of(context).welcome_message,
            style: AppTextStyle.s16_w400(color: context.colors.textSecondary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
} 