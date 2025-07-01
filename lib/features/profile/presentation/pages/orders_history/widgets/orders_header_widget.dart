import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class OrdersHeaderWidget extends StatelessWidget {
  const OrdersHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colors.primary,
            context.colors.primary.withValues(alpha: 0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          // Orders icon
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.receipt_long,
              size: 40,
              color: Colors.white,
            ),
          ),
          
          Gaps.vGap16,
          
          // Title
          Text(
            Translate.of(context).orders_history,
            style: AppTextStyle.s24_w700(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          
          Gaps.vGap8,
          
          // Stats
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStat(context, '127', 'Total Orders'),
              _buildStat(context, '8', 'This Week'),
              _buildStat(context, '2,450 SAR', 'Total Earnings'),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildStat(BuildContext context, String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: AppTextStyle.s18_w700(color: Colors.white),
        ),
        Gaps.vGap4,
        Text(
          label,
          style: AppTextStyle.s12_w400(color: Colors.white.withValues(alpha: 0.9)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
} 