import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class SubscriptionFeatureItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const SubscriptionFeatureItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: context.colors.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            size: 20,
            color: context.colors.primary,
          ),
        ),
        
        Gaps.hGap16,
        
        // Content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.s16_w600(color: context.colors.black),
              ),
              Gaps.vGap4,
              Text(
                description,
                style: AppTextStyle.s14_w400(color: Colors.grey[600]!),
              ),
            ],
          ),
        ),
      ],
    );
  }
} 