import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/scanned_product_action_chip_widget.dart';

class ScannedProductActionButtonsWidget extends StatelessWidget {
  final OrderDetailsModel data;
  final PrescriptionOrderController controller;
  final bool readOnly;

  const ScannedProductActionButtonsWidget({
    super.key,
    required this.data,
    required this.controller,
    this.readOnly = false,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScannedProductActionChipWidget(
          icon: CupertinoIcons.shield,
          label: Translate.s.insurance_coverage,
          value: _displayInsuranceValue,
          filled: _displayInsuranceValue != null,
          onTap: readOnly
              ? null
              : () => controller.showItemInsuranceCoverageDialog(context, data),
        ),
        Gaps.hGap8,
        ScannedProductActionChipWidget(
          icon: CupertinoIcons.doc_text,
          label: Translate.s.instructions,
          filled: _hasInstructions,
          onTap: readOnly
              ? () => controller.showApiInstructionsDialog(context, data)
              : () => controller.showItemInstructionsDialog(context, data),
        ),
      ],
    );
  }


  String? get _displayInsuranceValue {
    if (data.insuranceCoveragePercentage != null) {
      return '${data.insuranceCoveragePercentage}%';
    }
    if (data.insuranceCoveragePercentageApi != null) {
      return '${data.insuranceCoveragePercentageApi}%';
    }
    return null;
  }

  bool get _hasInstructions {
    final local = data.instructions;
    final api = data.instructionsApi;
    return (local != null && local.isNotEmpty) || (api != null && api.isNotEmpty);
  }
}
