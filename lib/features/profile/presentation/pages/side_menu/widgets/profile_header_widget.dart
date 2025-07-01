import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          // Profile avatar
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Text(
              'أم',
              style: AppTextStyle.s24_w700(color: context.colors.primary),
            ),
          ),
          const SizedBox(height: 16),
          
          // Driver name
          Text(
            'أحمد محمد السائق',
            style: AppTextStyle.s20_w700(color: Colors.white),
          ),
          const SizedBox(height: 8),
          
          // Driver rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const SizedBox(width: 4),
              Text(
                '4.8',
                style: AppTextStyle.s16_w600(color: Colors.white),
              ),
              const SizedBox(width: 4),
              Text(
                '(127 تقييم)',
                style: AppTextStyle.s14_w400(color: Colors.white.withOpacity(0.8)),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 