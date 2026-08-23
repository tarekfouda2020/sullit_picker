import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/barcode_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/product_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/scanned_product_action_buttons_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/scanned_product_quantity_stepper_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/scanned_product_unit_price_widget.dart';

class ScannedProductItemWidget extends StatelessWidget {
  final OrderDetailsModel data;
  final PrescriptionOrderController controller;
  final bool readOnly;

  const ScannedProductItemWidget({
    super.key,
    required this.data,
    required this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: ProductInfoWidget(data: data)),
              if (!readOnly)
                GestureDetector(
                  onTap: () => controller.removeItem(data),
                  child: const Icon(
                    CupertinoIcons.trash,
                    color: CupertinoColors.systemRed,
                    size: 20,
                  ),
                ),
            ],
          ),
          Gaps.vGap10,
          BarcodePriceWidget(data: data),
          Gaps.vGap10,
          ScannedProductUnitPriceWidget(data: data),
          Gaps.vGap10,
          ScannedProductQuantityStepperWidget(
            data: data,
            controller: controller,
            readOnly: readOnly,
          ),
          Gaps.vGap10,
          ScannedProductActionButtonsWidget(
            data: data,
            controller: controller,
            readOnly: readOnly,
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
