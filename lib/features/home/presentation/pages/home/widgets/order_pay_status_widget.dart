import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';

class OrderPayStatusWidget extends StatelessWidget {
  final OrderModel model;
  const OrderPayStatusWidget({super.key,  required this.model});

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
            color: model.isPaid
                ?context.colors.green
                :context.colors.primary,
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(8)),
          ),
          child: Text(
           // isPaid ? Translate.s.paid : Translate.s.unpaid,
           model.paymentStatusLabel.replaceAll("-", ""),
            style: AppTextStyle.s16_w800(color: context.colors.white),
          ),
        ),
        Text(
          // '${Translate.s.total} : 394 AED',
          model.orderAmount.parseCurrency,
          style: AppTextStyle.s18_w700(color: model.isPaid ? context.colors.green : context.colors.primary),
        )
      ],
    );
  }
}
