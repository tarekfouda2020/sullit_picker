import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class SubscriptionPlanWidget extends StatelessWidget {
  final String title;
  final String price;
  final String period;
  final bool isSelected;
  final bool isPopular;
  final String? discount;
  final VoidCallback onTap;

  const SubscriptionPlanWidget({
    super.key,
    required this.title,
    required this.price,
    required this.period,
    required this.isSelected,
    this.isPopular = false,
    this.discount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected ? context.colors.primary.withValues(alpha: 0.1) : context.colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? context.colors.primary : Colors.grey[300]!,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Popular badge
            if (isPopular)
              Positioned(
                top: -10,
                right: -10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    discount ?? 'Popular',
                    style: AppTextStyle.s12_w600(color: Colors.white),
                  ),
                ),
              ),
            
            Row(
              children: [
                // Selection indicator
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? context.colors.primary : Colors.grey[400]!,
                      width: 2,
                    ),
                    color: isSelected ? context.colors.primary : Colors.transparent,
                  ),
                  child: isSelected
                      ? const Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        )
                      : null,
                ),
                
                Gaps.hGap16,
                
                // Plan details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.s18_w700(color: context.colors.black),
                      ),
                      Gaps.vGap4,
                      Row(
                        children: [
                          Text(
                            price,
                            style: AppTextStyle.s24_w700(color: context.colors.primary),
                          ),
                          Gaps.hGap8,
                          Text(
                            period,
                            style: AppTextStyle.s14_w400(color: Colors.grey[600]!),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 