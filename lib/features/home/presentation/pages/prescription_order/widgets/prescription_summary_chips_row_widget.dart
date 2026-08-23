import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescription_summary_chip_widget.dart';

import '../../../../../../core/helpers/export.dart';

class PrescriptionSummaryChipsRowWidget extends StatelessWidget {
  final PharmacyOrderModel order;
  final ObsValue<String?> insuranceDiscountObs;
  final ObsValue<String?> bagsCountObs;
  final VoidCallback onEditInsuranceDiscount;
  final VoidCallback onEditBagsCount;

  const PrescriptionSummaryChipsRowWidget({
    super.key,
    required this.order,
    required this.insuranceDiscountObs,
    required this.bagsCountObs,
    required this.onEditInsuranceDiscount,
    required this.onEditBagsCount,
  });

  String? get _apiDiscount {
    final d = order.discounts?.firstWhereOrNull((d) => d.type == 'insurance_discount');
    return d?.discountValue;
  }

  String? get _apiBags {
    final count = order.bagsCount;
    return count > 0 ? count.toString() : null;
  }

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<String?>(
      observable: insuranceDiscountObs,
      builder: (context, discount) => ObsValueConsumer<String?>(
        observable: bagsCountObs,
        builder: (context, bags) {
          final String? effectiveDiscount = discount ?? _apiDiscount;
          final String? effectiveBags = bags ?? _apiBags;
          final bool discountFromApi = discount == null && effectiveDiscount != null;
          final bool bagsFromApi = bags == null && effectiveBags != null;

          final bool hasAny = effectiveDiscount != null || effectiveBags != null;
          if (!hasAny) return const SizedBox.shrink();

          return Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  if (effectiveDiscount != null) ...[
                    PrescriptionSummaryChipWidget(
                      icon: CupertinoIcons.shield_fill,
                      label: Translate.s.insurance_discount,
                      valueWidget: Text(
                        (double.tryParse(effectiveDiscount) ?? 0.0)
                            .toStringAsFixed(2)
                            .formatAmount(),
                        style: AppTextStyle.s12_w600(color: context.colors.primary),
                      ).withDirhamSymbol(symbolColor: context.colors.primary),
                      onTap: discountFromApi ? null : onEditInsuranceDiscount,
                    ),
                    if (effectiveBags != null) Gaps.hGap8,
                  ],
                  if (effectiveBags != null)
                    PrescriptionSummaryChipWidget(
                      icon: CupertinoIcons.bag_fill,
                      label: Translate.s.bags_number,
                      valueWidget: Text(
                        effectiveBags,
                        style: AppTextStyle.s12_w600(color: context.colors.primary),
                      ),
                      onTap: bagsFromApi ? null : onEditBagsCount,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
