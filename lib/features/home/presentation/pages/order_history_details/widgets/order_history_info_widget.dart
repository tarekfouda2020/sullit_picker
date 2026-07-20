import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/widgets/customer_history_item_widget.dart';
import 'driver_section_info_widget.dart';
import 'order_info_row_widget.dart';

class OrderHistoryInfoWidget extends StatelessWidget {
  final OrderModel order;

  const OrderHistoryInfoWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        border: Border.all(color: context.colors.borderLight,width: 1.3)
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            color: context.colors.primary.withOpacity(0.1),
            child: Center(
              child: RichText(
                text: TextSpan(
                  style:
                      AppTextStyle.s16_w400(color: context.colors.textPrimary),
                  children: [
                    TextSpan(text: '${Translate.s.order_no} : '),
                    TextSpan(
                      text: order.code,
                      style:
                          AppTextStyle.s18_w600(color: context.colors.primary),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: Dimens.paddingAll16Px,
                child: Column(
                  spacing: 10,
                  children: [
                    OrderInfoRowWidget(
                      label: Translate.s.start_pick_at,
                      value: order.getStartPickingDate() ?? order.startPickingAt,
                      isBoldValue: true,
                    ),
                    OrderInfoRowWidget(
                      label: Translate.s.total,
                      value: order.total.withDirhamIcon(),
                      isBoldValue: true,
                    ),
                    OrderInfoRowWidget(
                      label: Translate.s.status,
                      value: order.statusLabel,
                      isBoldValue: true,
                    ),
                    OrderInfoRowWidget(
                      label: "Receipt Status",
                      value: order.statusLabel,
                      isBoldValue: true,
                    ),
                    OrderInfoRowWidget(
                      label: Translate.s.no_of_items,
                      value: order.getFullCount.toString(),
                      isBoldValue: true,
                    ),
                    const OrderInfoRowWidget(
                      label: "Customer Info",
                      value: "",
                      isBoldValue: true,
                    ),
                  ],
                ),
              ),
              CustomerHistoryItemWidget(order: order),
              if(order.driverInfo!=null)
              DriverSectionInfoWidget(driverInfo: order.driverInfo!),
            ],
          ),
        ],
      ),
    );
  }
}
