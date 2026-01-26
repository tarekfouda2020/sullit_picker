import '../../data/model/orders_model/orders_model.dart';

class InvoiceModel {
  final String subTotal;
  final String shipping;
  final String tax;
  final String couponDiscount;
  final String serviceFees;
  final String techFees;
  final String vatFeeAmount;
  final String totalFeeAmount;
  final String loyaltyPointsValue;
  final String grandTotal;
  final String envFees;
  final int bagsCount;
  final String total;
  final List<OrderDiscountModel> discounts;

  final double bagPrice;

  InvoiceModel({
    required this.subTotal,
    required this.shipping,
    required this.tax,
    required this.couponDiscount,
    required this.serviceFees,
    required this.techFees,
    required this.vatFeeAmount,
    required this.totalFeeAmount,
    required this.loyaltyPointsValue,
    required this.grandTotal,
    required this.envFees,
    required this.bagsCount,
    required this.total,
    required this.discounts,
    this.bagPrice = 0.0,
  });

  double get totalVat => double.parse(tax) + double.parse(vatFeeAmount);

  InvoiceModel updateBags(int newCount) {
    // 1. Calculate new Environment Fees
    double newEnvFeesValue = newCount * bagPrice;
    String newEnvFees = newEnvFeesValue.toStringAsFixed(2);

    // 2. Calculate sum of discounts
    double totalDiscounts = discounts.fold(
        0.0, (sum, item) => sum + (double.tryParse(item.discountValue) ?? 0.0));

    // 3. Parse other values
    double subTotalVal = double.tryParse(subTotal) ?? 0.0;
    double shippingVal = double.tryParse(shipping) ?? 0.0;
    double taxVal = double.tryParse(tax) ?? 0.0;
    double serviceFeesVal = double.tryParse(serviceFees) ?? 0.0;
    double techFeesVal = double.tryParse(techFees) ?? 0.0;
    double vatFeeAmountVal = double.tryParse(vatFeeAmount) ?? 0.0;

    // 4. Calculate New Grand Total
    // Grand Total = SubTotal - Sum(Discounts) + Shipping + Tax + ServiceFees + TechFees + VatFeeAmount + EnvFees
    double newGrandTotalVal = subTotalVal -
        totalDiscounts +
        shippingVal +
        taxVal +
        serviceFeesVal +
        techFeesVal +
        vatFeeAmountVal +
        newEnvFeesValue;

    return InvoiceModel(
      subTotal: subTotal,
      shipping: shipping,
      tax: tax,
      couponDiscount: couponDiscount,
      serviceFees: serviceFees,
      techFees: techFees,
      vatFeeAmount: vatFeeAmount,
      totalFeeAmount: totalFeeAmount,
      loyaltyPointsValue: loyaltyPointsValue,
      grandTotal: newGrandTotalVal.toStringAsFixed(2),
      envFees: newEnvFees,
      bagsCount: newCount,
      total: total,
      discounts: discounts,
      bagPrice: bagPrice,
    );
  }
}
