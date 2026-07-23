import 'dart:convert';

class PrescriptionPreviewParams {
  final int orderId;
  final int bagsQnt;
  final double insuranceDiscount;
  final List<PrescriptionPreviewItemParams> details;

  PrescriptionPreviewParams({
    required this.orderId,
    required this.bagsQnt,
    required this.insuranceDiscount,
    required this.details,
  });

  Map<String, dynamic> toJson() => {
        "details": jsonEncode(details.map((e) => e.toJson()).toList()),
        "insurance_discount": insuranceDiscount,
        "bag_count": bagsQnt,
      };
}

class PrescriptionPreviewItemParams {
  final int variantId;
  final int qnt;
  final String? instructions;
  final double? insuranceCoveragePercentage;

  PrescriptionPreviewItemParams({
    required this.variantId,
    required this.qnt,
    this.instructions,
    this.insuranceCoveragePercentage,
  });

  Map<String, dynamic> toJson() => {
        "variant_id": variantId,
        "qty": qnt,
        if (instructions != null) "instructions": instructions,
        if (insuranceCoveragePercentage != null)
          "insurance_coverage_percentage": insuranceCoveragePercentage,
      };
}
