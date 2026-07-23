import 'dart:convert';

class AcceptPrescriptionParams {
  final int orderId;
  final int bagCount;
  final double? insuranceDiscount;
  final List<AcceptPrescriptionItemParams> details;

  AcceptPrescriptionParams({
    required this.orderId,
    required this.bagCount,
    required this.details,
    this.insuranceDiscount,
  });

  Map<String, dynamic> toJson() => {
        "details": jsonEncode(details.map((e) => e.toJson()).toList()),
        "bag_count": bagCount,
        if (insuranceDiscount != null)
          "insurance_discount": insuranceDiscount,
      };
}

class AcceptPrescriptionItemParams {
  final int variantId;
  final int qty;
  final String? instructions;
  final double insuranceCoveragePercentage;
  final double? price;

  AcceptPrescriptionItemParams({
    required this.variantId,
    required this.qty,
    this.instructions,
    this.insuranceCoveragePercentage = 0,
    this.price,
  });

  Map<String, dynamic> toJson() => {
        "variant_id": variantId,
        "qty": qty,
        "insurance_coverage_percentage": insuranceCoveragePercentage,
        if (instructions != null && instructions!.isNotEmpty)
          "instructions": instructions,
        if (price != null) "price": price,
      };
}
