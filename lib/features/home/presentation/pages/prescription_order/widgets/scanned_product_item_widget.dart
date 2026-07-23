import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/barcode_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/product_info_widget.dart';

import '../../../../../../core/helpers/export.dart';

class ScannedProductItemWidget extends StatelessWidget {
  final OrderDetailsModel data;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;
  final VoidCallback onInsuranceCoverage;
  final VoidCallback onInstructions;

  const ScannedProductItemWidget({
    super.key,
    required this.data,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
    required this.onInsuranceCoverage,
    required this.onInstructions,
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
          _buildUnitPriceRow(context),
          Gaps.vGap10,
          _buildQuantityStepper(context),
          Gaps.vGap10,
          _buildItemActionButtons(context),
          Gaps.vGap10,
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

  Widget _buildUnitPriceRow(BuildContext context) {
    final double unitPrice = double.tryParse(data.unitPrice) ?? 0.0;
    return Row(
     mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "${Translate.s.unit_price}/",
          style: AppTextStyle.s14_w300(color: context.colors.simiGray),
        ),
        Gaps.hGap5,
        Text(
          unitPrice.toStringAsFixed(2).formatAmount(),
          style: AppTextStyle.s14_w600(color: context.colors.black),
        ).withDirhamSymbol(symbolColor: context.colors.black),
      ],
    );
  }

  Widget _buildItemActionButtons(BuildContext context) {
    return Row(
      children: [
        _buildActionChip(
          context,
          icon: CupertinoIcons.shield,
          label: Translate.s.insurance_coverage,
          value: data.insuranceCoveragePercentage != null
              ? '${data.insuranceCoveragePercentage}%'
              : null,
          filled: data.insuranceCoveragePercentage != null,
          onTap: onInsuranceCoverage,
        ),
        Gaps.hGap8,
        _buildActionChip(
          context,
          icon: CupertinoIcons.doc_text,
          label: Translate.s.instructions,
          filled: data.instructions != null && data.instructions!.isNotEmpty,
          onTap: onInstructions,
        ),
      ],
    );
  }

  Widget _buildActionChip(
    BuildContext context, {
    required IconData icon,
    required String label,
    String? value,
    required bool filled,
    required VoidCallback onTap,
  }) {
    final Color color = filled ? context.colors.primary : context.colors.simiGray;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: filled ? context.colors.primary.withOpacity(0.1) : context.colors.background,
          borderRadius: Dimens.borderRadius8PX,
          border: Border.all(color: color, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: color),
            Gaps.hGap4,
            Text(
              value ?? label,
              style: AppTextStyle.s12_w400(color: color),
            ),
          ],
        ),
      ),
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
