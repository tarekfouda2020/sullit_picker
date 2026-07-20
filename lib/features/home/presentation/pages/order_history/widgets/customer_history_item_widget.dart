import 'package:flutter_tdd/features/home/presentation/widgets/custom_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_name_type_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_phone_widget.dart';

import '../../../../../../core/helpers/export.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';

class CustomerHistoryItemWidget extends StatelessWidget {
  final OrderModel order;
  const CustomerHistoryItemWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll16Px,
      color: context.colors.offWhite,
      child: Column(
        spacing: 10,
        children: [
         CustomerNameTypeWidget(customer: order.customer),
         Gaps.line,
          CustomerPhoneWidget(customer: order.customer),
          Gaps.line,
           CustomInfoWidget(
              title: "Payment Method : ${order.paymentMethod}",
              image: Res.visaIcon,
            endWidget:  Text(
              order.paymentStatus == true
                  ? Translate.s.paid
                  : Translate.s.unpaid,
              style: AppTextStyle.s15_w800(
                  color: order.paymentStatus == true
                      ? context.colors.appGreen
                      : context.colors.primary),
            ),
          ),
          Gaps.line,
          if(order.getOrderType()!=null)
            CustomInfoWidget(
              title:
              "${Translate.s.order_type} :",
              image: Res.deliveryIcon,
              endWidget: Text(
                order.getOrderType()!.getLabel(),
                style: AppTextStyle.s15_w800(
                  color: context.colors.primary,
                ),
              ),
            )
        ],
      ),
    );
  }
}
