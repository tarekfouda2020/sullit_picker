import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/widgets/order_history_items_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_date_widget.dart';

import '../../../../../../core/helpers/export.dart';
import '../../order_history_details/order_history_details.dart';
import 'customer_history_item_widget.dart';
import 'order_history_header_widget.dart';

class OrderHistoryItemWidget extends StatelessWidget {
  final OrderModel order;

  const OrderHistoryItemWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: Dimens.paddingH10V16PX,
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: Dimens.paddingBottom12,
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: context.colors.borderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          OrderHistoryHeaderWidget(order: order),
          CustomerHistoryItemWidget(order:order),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppTextButton.maxCustom(
              maxHeight: 40,
              onPressed: () => AutoRouter.of(context).push(OrderHistoryDetailsPage(id: order.id)),
              text: "View Details",
            bgColor: context.colors.white,
              borderColor: context.colors.primary,
              txtColor: context.colors.primary,
            ),
          )
        ],
      ),
    );
  }

}
