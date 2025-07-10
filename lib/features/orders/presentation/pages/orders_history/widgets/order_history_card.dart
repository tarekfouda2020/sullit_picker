import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/orders_history/widgets/order_history_info_widget.dart';

class OrderHistoryCardWidget extends StatelessWidget {
  final bool isFailed;
  const OrderHistoryCardWidget({super.key, required this.isFailed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(19, 16, 24, 16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '#6657564',
            style: AppTextStyle.s16_w700(color: context.colors.primary),
          ),
          Gaps.vGap5,
          Row(
            children: [
              Text(
                'Receiving From ',
                style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
              ),
              Text(
                'Sulite Store',
                style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
              ),
            ],
          ),
          Gaps.vGap7,
          Row(
            children: [
              Expanded(
                child: Text(
                  'Total : 394 AED',
                  style: AppTextStyle.s16_w700(color: context.colors.primary),
                ),
              ),
              Text(
                'Cash',
                style: AppTextStyle.s14_w500(color: context.colors.textPrimary),
              ),
            ],
          ),
          Gaps.vGap12,
          const OrderHistoryInfoWidget(
            label: 'Acceptance Time :',
            value: '12 May 2025 - 03:54 PM',
          ),
          Gaps.vGap4,
          if (!isFailed)
            const OrderHistoryInfoWidget(
              label: 'Delivered Time :',
              value: '12 May 2025 - 03:54 PM',
            ),
          if (isFailed)
            const OrderHistoryInfoWidget(
              label: 'Failed Reason :',
              value: "User didn't respond",
            ),
        ],
      ),
    );
  }
}
