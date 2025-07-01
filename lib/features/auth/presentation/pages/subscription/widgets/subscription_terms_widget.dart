import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class SubscriptionTermsWidget extends StatelessWidget {
  final bool isAccepted;
  final VoidCallback onToggle;

  const SubscriptionTermsWidget({
    super.key,
    required this.isAccepted,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Checkbox
        GestureDetector(
          onTap: onToggle,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: isAccepted ? context.colors.primary : Colors.transparent,
              border: Border.all(
                color: isAccepted ? context.colors.primary : Colors.grey[400]!,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: isAccepted
                ? const Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                : null,
          ),
        ),
        
        Gaps.hGap12,
        
        // Terms text
        Expanded(
          child: RichText(
            text: TextSpan(
              style: AppTextStyle.s14_w400(color: Colors.grey[600]!),
              children: [
                const TextSpan(text: 'I agree to the '),
                TextSpan(
                  text: 'Terms & Conditions',
                  style: AppTextStyle.s14_w600(color: context.colors.primary),
                ),
                const TextSpan(text: ' and '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: AppTextStyle.s14_w600(color: context.colors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
} 