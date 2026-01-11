
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/widgets/order_history_items_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_date_widget.dart';

import '../../../../../../core/helpers/export.dart';
import '../../order_history_details/order_history_details.dart';

class OrderHistoryItemWidget extends StatelessWidget {
  final OrderModel order;
  const OrderHistoryItemWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(OrderHistoryDetailsPage(id: order.id)),
      child: Container(
        padding: Dimens.paddingH10V16PX,
        margin: Dimens.paddingBottom12,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(
            color: context.colors.borderColor
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${Translate.of(context).order_no} : ",
                  style: AppTextStyle.s16_w500(color: context.colors.black),
                ),
                Text(
                  order.paymentStatus==true
                      ?Translate.s.paid
                      :Translate.s.unpaid,
                  style: AppTextStyle.s17_w300(color:
                  order.paymentStatus == true
                      ? context.colors.green
                      :  context.colors.primary
                  ),
                )
              ],
            ),
            Text(
              "#${order.code}",
              style: AppTextStyle.s19_w600(color: context.colors.primary),
            ),
            Row(
              children: [
              Text("${Translate.s.total} : ",
              style: AppTextStyle.s16_w300(color: context.colors.black),
              ),
                Text(order.total,
                  style: AppTextStyle.s14_w500(color: context.colors.primary),
                ).withDirhamSymbol(
                  symbolStyle: AppTextStyle.s17_w300(color: context.colors.primary)
                ),
              ],
            ),
            OrderHistoryItemsWidget(title: Translate.s.payment_method, endTitle: order.paymentMethod ?? "",),
            OrderHistoryItemsWidget(title: Translate.s.status, endTitle: order.statusLabel,),
            if(order.driverInfo!=null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                OrderHistoryItemsWidget(title: Translate.s.driver, endTitle: order.driverInfo!.name,),
                OrderHistoryItemsWidget(
                  title: "Driver number",
                  endTitle: order.driverInfo!.phone,
                 onPressPhone: () => BottomSheetsWidget.showContactWithSheet(
                     context,
                     order.driverInfo!.phone,
                   title: "Contact with driver using"
                 ),
                ),
              ],
            ),

            CustomerDateWidget(customer: order.customer),
            if(order.getStartPickingDate() != null)
            OrderHistoryItemsWidget(title: Translate.s.start_pick_at, endTitle: order.getStartPickingDate()!),
            if(order.driverInfo!=null && order.getDeliveredDate()!=null)
            OrderHistoryItemsWidget(title: "Delivered at", endTitle: order.getDeliveredDate()!),
          ],
        ),
      ),
    );
  }
}
