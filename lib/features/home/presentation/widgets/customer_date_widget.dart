
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/widgets/order_history_items_widget.dart';

import '../../../../core/helpers/export.dart';

class CustomerDateWidget extends StatelessWidget {
  final CustomerModel customer;
  const CustomerDateWidget({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        OrderHistoryItemsWidget(title: Translate.s.customer_name, endTitle: customer.name,vPadding: 15,),
        GestureDetector(
            onTap: () => BottomSheetsWidget.showContactWithSheet(context, customer.customerPhone),
            child: OrderHistoryItemsWidget(
              title: Translate.s.customer_phone,
              endTitle: customer.customerPhone,
             onPressPhone: () => BottomSheetsWidget.showContactWithSheet(context, customer.customerPhone),
            )
        ),
      ],
    );
  }
}
