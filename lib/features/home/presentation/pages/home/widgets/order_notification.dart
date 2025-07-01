import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class OrderNotification extends StatelessWidget {
  const OrderNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 13),
      width: double.infinity,
      height: 113,
      decoration: BoxDecoration(
        color: context.colors.lightBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            '#6657564',
            style: AppTextStyle.s18_w700(color: context.colors.primary),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: '${Translate.s.receiving_from} ',
              style: AppTextStyle.s16_w400(color: context.colors.textPrimary),
              children: [
                TextSpan(
                  text: 'Sulite Store',
                  style: AppTextStyle.s16_w700(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          const SizedBox(height: 9),
          Text(
            Translate.s.thirty_minutes_ago,
            style: AppTextStyle.s14_w400(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
