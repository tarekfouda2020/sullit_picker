import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import '../../../../../../core/theme/colors/colors_extension.dart';
import 'order_info_row_widget.dart';

class OrderHistoryInfoWidget extends StatelessWidget {
  final OrderModel order;

  const OrderHistoryInfoWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: RichText(
              text: TextSpan(
                style: AppTextStyle.s16_w400(color: context.colors.textPrimary),
                children: [
                  TextSpan(text: '${Translate.s.order_no} : '),
                  TextSpan(
                    text: order.code,
                    style: AppTextStyle.s18_w600(color: context.colors.primary),
                  ),
                ],
              ),
            ),
          ),
          Gaps.vGap12,
          Divider(height: 1, color: context.colors.greyWhite),
          Gaps.vGap12,
          OrderInfoRowWidget(
            label: Translate.s.start_pick_at,
            value: order.getStartPickingDate() ?? order.startPickingAt,
          ),
          OrderInfoRowWidget(
            label: Translate.s.status,
            value: order.statusLabel,
            isBoldValue: true,
          ),
          OrderInfoRowWidget(
            label: Translate.s.no_of_items,
            value: order.getFullCount.toString(),
          ),
          OrderInfoRowWidget(
            label: "Receipt Status",
            value: order.statusLabel,
          ),
          OrderInfoRowWidget(
            label: Translate.s.payment_method,
            value: order.paymentMethod ?? "N/A",
            isBoldValue: true,
          ),
        ],
      ),
    );
  }
}
