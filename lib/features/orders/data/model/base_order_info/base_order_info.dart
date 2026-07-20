import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/data/enum/order_type_enum.dart';
import 'package:flutter_tdd/features/home/data/model/order_shared_models/order_shared_models.dart';
import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_order_info.freezed.dart';

part 'base_order_info.g.dart';

/// Fields and logic shared by every order type (normal, pharmacy, ...).
/// Each order-type model composes this instead of redeclaring the same
/// fields, and forwards the getters/setters it needs.
@unfreezed
class BaseOrderInfo with _$BaseOrderInfo {
  const BaseOrderInfo._();

  factory BaseOrderInfo({
    required int id,
    required CustomerModel customer,
    required String code,
    required String total,
    required String status,
    String? subtotal,
    String? shipping,
    String? tax,
    @JsonKey(name: 'tax_percentage') String? taxPercentage,
    @JsonKey(name: 'coupon_discount') String? couponDiscount,
    @JsonKey(name: 'service_fees') String? serviceFees,
    @JsonKey(name: 'environment_fees') String? envFees,
    @JsonKey(name: 'technology_fees') String? techFees,
    @JsonKey(name: 'vat_fee_amount') String? vatFeeAmount,
    @JsonKey(name: 'total_fee_amount') String? totalFeeAmount,
    @JsonKey(name: 'loyalty_points_value') String? loyaltyPointsValue,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'shop_type') required String shopType,
    @JsonKey(name: 'is_pending_review') required bool isPendingReview,
    @JsonKey(name: 'awaiting_customer_completion')
    required bool awaitingCustomerCompletion,
    @JsonKey(name: 'requires_prescription_review')
    required bool requiresPrescriptionReview,
    @JsonKey(name: 'insurance_applied') required bool insuranceApplied,
    @JsonKey(name: 'bag_count') required int bagsCount,
    @JsonKey(name: 'bag_price') required double bagPrice,
    @JsonKey(name: 'allow_replacement') required bool allowReplacement,
    @JsonKey(name: 'status_label') required String statusLabel,
    @JsonKey(name: 'picker_notes') required String pickerNotes,
    @JsonKey(name: 'order_date') String? orderDate,
    @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
    @JsonKey(name: 'start_picking_at') required String startPickingAt,
    @JsonKey(name: 'delivered_at') required String deliveredAt,
    @JsonKey(name: 'shipping_type') String? shippingType,
    @JsonKey(name: 'shipping_type_label') String? shippingTypeLabel,
    @JsonKey(name: 'payment_status') bool? paymentStatus,
    @JsonKey(name: 'payment_status_text') String? paymentStatusText,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'driver') required DriverModel? driverInfo,
    @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
    @JsonKey(name: 'order_detail_histories')
    List<ModifiedProductModel>? modifiedProducts,
    @JsonKey(name: 'order_discounts') List<OrderDiscountModel>? discounts,
  }) = _BaseOrderInfo;

  factory BaseOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$BaseOrderInfoFromJson(json);

  OrderStatusEnum getOrderStatus() {
    switch (status) {
      case 'preparing':
        return OrderStatusEnum.preparing;
      case 'new':
      case 'pending':
        return OrderStatusEnum.newOrder;
      default:
        return OrderStatusEnum.newOrder;
    }
  }

  OrderTypeEnum? getOrderType() {
    switch (shippingType) {
      case 'pickup_point':
        return OrderTypeEnum.pickupPoint;
      case 'self_delivery':
      case 'app_driver':
        return OrderTypeEnum.delivery;
      default:
        return null;
    }
  }

  bool get orderDelivery => getOrderType() == OrderTypeEnum.delivery;

  bool get orderPickUp => getOrderType() == OrderTypeEnum.pickupPoint;

  bool get isAssigned => getOrderStatus() == OrderStatusEnum.preparing;

  bool get isNewOrder => getOrderStatus() == OrderStatusEnum.newOrder;

  double getOriginalTotalPrice() {
    return ordersDetails!
        .fold(0.0, (sum, item) => sum + (double.tryParse(item.price) ?? 0.0));
  }

  InvoiceModel get invoiceModel => InvoiceModel(
        subTotal: subtotal ?? "",
        shipping: shipping ?? "",
        tax: tax ?? "",
        couponDiscount: couponDiscount ?? "",
        serviceFees: serviceFees ?? "",
        techFees: techFees ?? "",
        vatFeeAmount: vatFeeAmount ?? "",
        totalFeeAmount: totalFeeAmount ?? "",
        loyaltyPointsValue: loyaltyPointsValue ?? "",
        grandTotal: total,
        envFees: envFees ?? "",
        bagsCount: bagsCount,
        productsTotalPrice: getOriginalTotalPrice().toStringAsFixed(2),
        discounts: discounts ?? <OrderDiscountModel>[],
        bagPrice: bagPrice,
        taxPercentage: taxPercentage ?? "",
      );
}
