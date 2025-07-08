import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class OrderPayStatusWidget extends StatelessWidget {
  final bool isPaid;
  const OrderPayStatusWidget({super.key, required this.isPaid});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 11),
          width: 186,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: isPaid
                ?context.colors.green
                :context.colors.primary,
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(8)),
          ),
          child: Text(
           isPaid ? "Paid" : Translate.s.unpaid,
            style: AppTextStyle.s16_w800(color: context.colors.white),
          ),
        ),
        Text(
          '${Translate.s.total} : 394 AED',
          style: AppTextStyle.s18_w700(color: isPaid ? context.colors.green : context.colors.primary),
        )
      ],
    );
  }
}
