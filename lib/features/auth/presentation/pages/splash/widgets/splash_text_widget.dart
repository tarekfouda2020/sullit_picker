import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class SplashTextWidget extends StatelessWidget {
  const SplashTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App Name
        Text(
          'سوليت',
          style: AppTextStyle.s32_w700(color: Colors.white),
        ),
        const SizedBox(height: 10),
        
        // App Subtitle
        Text(
          'تطبيق التوصيل السريع',
          style: AppTextStyle.s16_w400(color: Colors.white.withOpacity(0.9)),
        ),
      ],
    );
  }
} 