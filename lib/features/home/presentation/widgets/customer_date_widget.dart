
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';

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
        Text("${Translate.s.customer_name} ${customer.name}",
          style: AppTextStyle.s15_w500(color: context.colors.black),
        ),
        GestureDetector(
          onTap: () => BottomSheetsWidget.showContactWithSheet(context, customer.customerPhone),
          child: Row(
            children: [
              Text(Translate.s.customer_phone,
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
              Expanded(
                child: Text(customer.customerPhone,
                  style: AppTextStyle.s15_w500(color: context.colors.black),
                ),
              ),
              Icon(CupertinoIcons.phone_arrow_up_right,color: context.colors.green,)
            ],
          ),
        ),
      ],
    );
  }
}
