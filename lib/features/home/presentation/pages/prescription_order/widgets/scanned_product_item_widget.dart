import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/barcode_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/product_info_widget.dart';

import '../../../../../../core/helpers/export.dart';

class ScannedProductItemWidget extends StatelessWidget {
  final OrderDetailsModel data;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;

  const ScannedProductItemWidget({
    super.key,
    required this.data,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
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
              GestureDetector(
                onTap: onRemove,
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
          _buildQuantityStepper(context),
        ],
      ),
    );
  }

  Widget _buildQuantityStepper(BuildContext context) {
    return Row(
      children: [
        Text(
          Translate.s.qnt,
          style: AppTextStyle.s14_w300(color: context.colors.simiGray),
        ),
        const Spacer(),
        _buildStepperButton(
          context,
          icon: CupertinoIcons.minus,
          onTap: onDecrement,
        ),
        SizedBox(
          width: 40,
          child: Text(
            "${data.quantity}",
            textAlign: TextAlign.center,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
        ),
        _buildStepperButton(
          context,
          icon: CupertinoIcons.add,
          onTap: onIncrement,
        ),
      ],
    );
  }

  Widget _buildStepperButton(
    BuildContext context, {
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: Dimens.borderRadius8PX,
        ),
        child: Icon(icon, size: 16, color: context.colors.primary),
      ),
    );
  }
}
