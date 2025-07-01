import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class SubscriptionContentWidget extends StatelessWidget {
  const SubscriptionContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Current Plan Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 24,
                    ),
                    Gaps.hGap8,
                    Text(
                      'Current Plan',
                      style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                    ),
                  ],
                ),
                
                Gaps.vGap12,
                
                Text(
                  'Premium Driver',
                  style: AppTextStyle.s20_w700(color: context.colors.textPrimary),
                ),
                
                Gaps.vGap8,
                
                Text(
                  '500.00 AED / Year',
                  style: AppTextStyle.s16_w600(color: context.colors.primary),
                ),
                
                Gaps.vGap12,
                
                Text(
                  'Next billing: March 15, 2024',
                  style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
                ),
              ],
            ),
          ),
          
          Gaps.vGap24,
          
          // Features Section
          Text(
            'Plan Features',
            style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          ),
          
          Gaps.vGap16,
          
          _buildFeatureItem(
            context,
            icon: Icons.delivery_dining,
            title: 'Unlimited Deliveries',
            description: 'Accept unlimited delivery orders',
          ),
          
          _buildFeatureItem(
            context,
            icon: Icons.support_agent,
            title: '24/7 Support',
            description: 'Priority customer support',
          ),
          
          _buildFeatureItem(
            context,
            icon: Icons.analytics,
            title: 'Advanced Analytics',
            description: 'Detailed earnings and performance reports',
          ),
          
          _buildFeatureItem(
            context,
            icon: Icons.star,
            title: 'Priority Orders',
            description: 'Get priority access to high-value orders',
          ),
          
          Gaps.vGap32,
          
          // Action Buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle upgrade plan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.colors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Upgrade Plan',
                    style: AppTextStyle.s16_w600(color: Colors.white),
                  ),
                ),
              ),
              
              Gaps.hGap12,
              
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // Handle manage subscription
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: BorderSide(color: context.colors.primary),
                  ),
                  child: Text(
                    'Manage',
                    style: AppTextStyle.s16_w600(color: context.colors.primary),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildFeatureItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: context.colors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: context.colors.primary,
              size: 24,
            ),
          ),
          
          Gaps.hGap16,
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                ),
                
                Gaps.vGap4,
                
                Text(
                  description,
                  style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 