import 'dart:math';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/widgets/order_history_items_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_date_widget.dart';

import 'widgets_imports.dart';

class HeaderOrderDetailsWidget extends StatelessWidget {
  final OrderModel data;
  final OrderDetailsController controller;

  const HeaderOrderDetailsWidget(
      {super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderHistoryItemsWidget(
          title: Translate.s.payment_method,
          vPadding: 13 ,
          endTitle: data.paymentMethod ?? "",
          endWidget: Text(data.isPaid
              ?Translate.s.paid
              :Translate.s.unpaid,
           style: AppTextStyle.s15_w500(color: data.isPaid
               ? context.colors.green
               : context.colors.primary
           ),
          ),
        ),
        CustomerDateWidget(customer: data.customer),
        ObsValueConsumer(
          observable: DateTimeHelper.getDifferenceFromCurrentDate(
              data.startPickingAt,
              format: "yyyy-MM-dd HH:mm:ss"),
          builder: (context, assignedTime) => Text(
              '${Translate.of(context).assigned} $assignedTime',
              style: AppTextStyle.s14_w300(color: context.colors.textColor)),
        ),
      ],
    );
  }


}
