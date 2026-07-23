import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';

import '../../../../../../core/helpers/export.dart';

class PrescriptionOrderSummaryWidget extends StatelessWidget {
  final ObsValue<String?> insuranceDiscountObs;
  final ObsValue<String?> bagsCountObs;
  final VoidCallback onEditInsuranceDiscount;
  final VoidCallback onEditBagsCount;

  const PrescriptionOrderSummaryWidget({
    super.key,
    required this.insuranceDiscountObs,
    required this.bagsCountObs,
    required this.onEditInsuranceDiscount,
    required this.onEditBagsCount,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<String?>(
      observable: insuranceDiscountObs,
      builder: (context, discount) => ObsValueConsumer<String?>(
        observable: bagsCountObs,
        builder: (context, bags) {
          final bool hasAny = discount != null || bags != null;
          if (!hasAny) return const SizedBox.shrink();
          return Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  if (discount != null) ...[
                    _buildSummaryChip(
                      context,
                      icon: CupertinoIcons.shield_fill,
                      label: Translate.s.insurance_discount,
                      valueWidget: Text(
                        (double.tryParse(discount) ?? 0.0)
                            .toStringAsFixed(2)
                            .formatAmount(),
                        style: AppTextStyle.s12_w600(color: context.colors.primary),
                      ).withDirhamSymbol(symbolColor: context.colors.primary),
                      onTap: onEditInsuranceDiscount,
                    ),
                    if (bags != null) Gaps.hGap8,
                  ],
                  if (bags != null)
                    _buildSummaryChip(
                      context,
                      icon: CupertinoIcons.bag_fill,
                      label: Translate.s.bags_number,
                      valueWidget: Text(
                        bags,
                        style: AppTextStyle.s12_w600(color: context.colors.primary),
                      ),
                      onTap: onEditBagsCount,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSummaryChip(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Widget valueWidget,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: context.colors.primary.withOpacity(0.08),
        borderRadius: Dimens.borderRadius8PX,
        border: Border.all(color: context.colors.primary.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: context.colors.primary),
          Gaps.hGap4,
          Text(
            '$label: ',
            style: AppTextStyle.s12_w300(color: context.colors.simiGray),
          ),
          valueWidget,
        ],
      ),
      ),
    );
  }
}
