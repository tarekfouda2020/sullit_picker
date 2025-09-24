import 'package:flutter_tdd/features/orders/presentation/pages/new_orders/new_orders_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/orders_history/widgets/order_history_info_widget.dart';

import 'new_orders_widgets_imports.dart';

class NewOrderItemWidget extends StatelessWidget {
  final OrderModel order;
  final NewOrdersController controller;
  const NewOrderItemWidget({super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Text(
            'Order price : ${order.orderAmount}',
            style: AppTextStyle.s14_w700(color: context.colors.primary),
          ),
          Text(
            'Driver amount: ${order.driverAmount}',
            style: AppTextStyle.s14_w700(color: context.colors.primary),
          ),
          Row(
            children: [
              Text(
                '${Translate.of(context).receiving_from} ',
                style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
              ),
              Expanded(
                child: Text(
                  order.recivingFrom,
                  style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Text(
            'Payment type: ${order.paymentMethodLabel}',
            style: AppTextStyle.s14_w500(color: context.colors.textPrimary),
          ),
          OrderHistoryInfoWidget(
            label: 'Status',
            value: order.statusLabel,
          ),
          OrderHistoryInfoWidget(
            label: 'Customer',
            value: order.customerName,
          ),
          OrderHistoryInfoWidget(
            label: 'Distance to store',
            // value: order.storeDistance ?? "",
            value: "${order.distanceKm} km",
          ),
          OrderHistoryInfoWidget(
            label: 'Distance from store to Customer',
            value: order.storeDistance ?? "" ,
          ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: AppTextButton.maxCustom(
                text: "Accept Order",
                onPressed: ()=> controller.acceptOrder(context, order.id),
                maxHeight: 40,
              ),
            )
        ],
      ),
    );
  }
}
