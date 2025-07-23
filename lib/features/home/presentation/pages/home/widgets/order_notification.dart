import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class OrderNotification extends StatelessWidget {
  const OrderNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 13,bottom: 17),
      alignment: Alignment.center,
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
          Gaps.vGap8,
          RichText(
            text: TextSpan(
              text: '${Translate.of(context).receiving_from} ',
              style: AppTextStyle.s16_w300(color: context.colors.textPrimary),
              children: [
                TextSpan(
                  text: 'Sulite Store',
                  style: AppTextStyle.s16_w700(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
        Gaps.vGap9,
          Text(
           "${30} minutes ago",
            style: AppTextStyle.s14_w400(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
