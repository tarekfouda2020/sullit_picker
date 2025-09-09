import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';

class OrderNotification extends StatelessWidget {
  final OrderModel model;
  const OrderNotification({super.key, required this.model});

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
            '#${model.code}',
            style: AppTextStyle.s18_w700(color: context.colors.primary),
          ),
          Gaps.vGap8,
          RichText(
            text: TextSpan(
              text: '${Translate.of(context).receiving_from} ',
              style: AppTextStyle.s16_w300(color: context.colors.textPrimary),
              children: [
                TextSpan(
                  text: model.store!.storeName,
                  style: AppTextStyle.s16_w700(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          Gaps.vGap9,
          ObsValueConsumer(
            observable: DateTimeHelper.getDifferenceFromCurrentDate(model.assignedAt),
            builder: (context, timeAgo) {
              return Text(
                timeAgo,
                style: AppTextStyle.s14_w400(color: context.colors.primary),
              );
            },
          ),
        ],
      ),
    );
  }
}
