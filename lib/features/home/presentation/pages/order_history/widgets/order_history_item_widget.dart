
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/widgets/order_history_items_widget.dart';

import '../../../../../../core/helpers/export.dart';

class OrderHistoryItemWidget extends StatelessWidget {
  final OrderModel order;
  const OrderHistoryItemWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingScreenAll,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(
          color: context.colors.borderColor
        )
      ),
      child: Column(
        spacing: 15,
        children: [
          Row(
            children: [
              Text(
                "${Translate.of(context).order_no} : ",
                style: AppTextStyle.s17_w300(color: context.colors.black),
              ),
              Gaps.hGap2,
              Expanded(
                child: Text(
                  order.code,
                  style: AppTextStyle.s19_w600(color: context.colors.primary),
                ),
              ),
            ],
          ),
          OrderHistoryItemsWidget(title: Translate.s.status, endTitle: order.status,),
          OrderHistoryItemsWidget(title: Translate.s.customer_name, endTitle: order.customer.name,),
          OrderHistoryItemsWidget(title: Translate.s.customer_phone, endTitle: order.customer.customerPhone,),
          if(order.getStartPickingDate()!=null)
          OrderHistoryItemsWidget(title: Translate.s.start_pick_at, endTitle: order.getStartPickingDate()!),
        ],
      ),
    );
  }
}
