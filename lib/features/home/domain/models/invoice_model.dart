import 'dart:developer';

import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';

import '../../data/model/orders_model/orders_model.dart';

/// total represent products total with Vat
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
  final String productsTotalPrice;
  final String taxPercentage;
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
    required this.productsTotalPrice,
    required this.discounts,
    required this.taxPercentage,
    this.bagPrice = 0.0,
  });

  // double get totalVat => double.parse(tax) + double.parse(vatFeeAmount);
  double get getEnvVat => double.parse(envFees) * 0.05;
  double get totalVat => double.parse(tax) + getEnvVat ;

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
        productsTotalPrice: productsTotalPrice,
        discounts: discounts,
        bagPrice: bagPrice,
        taxPercentage: taxPercentage);
  }

  double  getGrandTotal(){
    double sub = double.parse(subTotal.cleanNumber());
    double couponDiscountValue = double.parse(couponDiscount.cleanNumber());
    double discountsList = discounts.fold(0.0, (previousValue, element) => previousValue+double.parse(element.discount.cleanNumber()),) ;
    double envFee = double.parse(envFees.cleanNumber());
    double totalDiscount = couponDiscountValue + discountsList;
    double grandTotal = (sub-totalDiscount) + envFee + totalVat;
    return grandTotal;
  }

  double getSubTotal() {
    double totalPrice = double.parse(productsTotalPrice.cleanNumber());
    double vatPercent = double.parse(taxPercentage) / 100;
    double subTotalWithoutVat = totalPrice - (totalPrice * vatPercent);
    return subTotalWithoutVat;
  }


  bool get haveCoupon => (double.tryParse(couponDiscount.cleanNumber()) ?? 0 ) > 0 == true;

  bool get haveEnvFees => (double.tryParse(envFees) ?? 0 ) > 0 == true;

}
