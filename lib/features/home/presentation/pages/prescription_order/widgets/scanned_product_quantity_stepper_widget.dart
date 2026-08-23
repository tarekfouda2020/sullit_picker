import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/scanned_product_stepper_button_widget.dart';

class ScannedProductQuantityStepperWidget extends StatelessWidget {
  final OrderDetailsModel data;
  final PrescriptionOrderController controller;
  final bool readOnly;

  const ScannedProductQuantityStepperWidget({
    super.key,
    required this.data,
    required this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Translate.s.qnt,
          style: AppTextStyle.s14_w300(color: context.colors.simiGray),
        ),
        const Spacer(),
        if (readOnly)
          Text(
            '${data.quantity}',
            style: AppTextStyle.s16_w600(color: context.colors.black),
          )
        else ...[
          ScannedProductStepperButtonWidget(
            icon: CupertinoIcons.minus,
            onTap: () => controller.updateQuantity(data, data.quantity - 1),
          ),
          SizedBox(
            width: 40,
            child: Text(
              '${data.quantity}',
              textAlign: TextAlign.center,
              style: AppTextStyle.s16_w600(color: context.colors.black),
            ),
          ),
          ScannedProductStepperButtonWidget(
            icon: CupertinoIcons.add,
            onTap: () => controller.updateQuantity(data, data.quantity + 1),
          ),
        ],
      ],
    );
  }
}
