import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class SubscriptionHeaderWidget extends StatelessWidget {
  const SubscriptionHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App logo/icon
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: context.colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(
            Icons.local_shipping,
            size: 40,
            color: Colors.white,
          ),
        ),
        
        Gaps.vGap24,
        
        // Title
        Text(
          'Choose Your Plan',
          style: AppTextStyle.s24_w700(color: context.colors.black),
          textAlign: TextAlign.center,
        ),
        
        Gaps.vGap8,
        
        // Subtitle
        Text(
          'Select the best plan for your delivery needs',
          style: AppTextStyle.s16_w400(color: Colors.grey[600]!),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
} 