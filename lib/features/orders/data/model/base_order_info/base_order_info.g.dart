// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_order_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseOrderInfoImpl _$$BaseOrderInfoImplFromJson(Map<String, dynamic> json) =>
    _$BaseOrderInfoImpl(
      id: (json['id'] as num).toInt(),
      customer:
          CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
      code: json['code'] as String,
      total: json['total'] as String,
      status: json['status'] as String,
      subtotal: json['subtotal'] as String?,
      shipping: json['shipping'] as String?,
      tax: json['tax'] as String?,
      taxPercentage: json['tax_percentage'] as String?,
      couponDiscount: json['coupon_discount'] as String?,
      serviceFees: json['service_fees'] as String?,
      envFees: json['environment_fees'] as String?,
      techFees: json['technology_fees'] as String?,
      vatFeeAmount: json['vat_fee_amount'] as String?,
      totalFeeAmount: json['total_fee_amount'] as String?,
      loyaltyPointsValue: json['loyalty_points_value'] as String?,
      totalItems: (json['total_items'] as num).toInt(),
      shopType: json['shop_type'] as String,
      isPendingReview: json['is_pending_review'] as bool?,
      awaitingCustomerCompletion: json['awaiting_customer_completion'] as bool?,
      requiresPrescriptionReview: json['requires_prescription_review'] as bool?,
      insuranceApplied: json['insurance_applied'] as bool?,
      bagsCount: (json['bag_count'] as num).toInt(),
      bagPrice: (json['bag_price'] as num).toDouble(),
      allowReplacement: json['allow_replacement'] as bool,
      statusLabel: json['status_label'] as String,
      pickerNotes: json['picker_notes'] as String,
      orderDate: json['order_date'] as String?,
      preparationMinutes: (json['preparation_minutes'] as num).toInt(),
      startPickingAt: json['start_picking_at'] as String,
      deliveredAt: json['delivered_at'] as String,
      shippingType: json['shipping_type'] as String?,
      shippingTypeLabel: json['shipping_type_label'] as String?,
      paymentStatus: json['payment_status'] as bool?,
      paymentStatusText: json['payment_status_text'] as String?,
      paymentMethod: json['payment_method'] as String?,
      driverInfo: json['driver'] == null
          ? null
          : DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
      ordersDetails: (json['order_details'] as List<dynamic>?)
          ?.map((e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifiedProducts: (json['order_detail_histories'] as List<dynamic>?)
          ?.map((e) => ModifiedProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      discounts: (json['order_discounts'] as List<dynamic>?)
          ?.map((e) => OrderDiscountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BaseOrderInfoImplToJson(_$BaseOrderInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'code': instance.code,
      'total': instance.total,
      'status': instance.status,
      'subtotal': instance.subtotal,
      'shipping': instance.shipping,
      'tax': instance.tax,
      'tax_percentage': instance.taxPercentage,
      'coupon_discount': instance.couponDiscount,
      'service_fees': instance.serviceFees,
      'environment_fees': instance.envFees,
      'technology_fees': instance.techFees,
      'vat_fee_amount': instance.vatFeeAmount,
      'total_fee_amount': instance.totalFeeAmount,
      'loyalty_points_value': instance.loyaltyPointsValue,
      'total_items': instance.totalItems,
      'shop_type': instance.shopType,
      'is_pending_review': instance.isPendingReview,
      'awaiting_customer_completion': instance.awaitingCustomerCompletion,
      'requires_prescription_review': instance.requiresPrescriptionReview,
      'insurance_applied': instance.insuranceApplied,
      'bag_count': instance.bagsCount,
      'bag_price': instance.bagPrice,
      'allow_replacement': instance.allowReplacement,
      'status_label': instance.statusLabel,
      'picker_notes': instance.pickerNotes,
      'order_date': instance.orderDate,
      'preparation_minutes': instance.preparationMinutes,
      'start_picking_at': instance.startPickingAt,
      'delivered_at': instance.deliveredAt,
      'shipping_type': instance.shippingType,
      'shipping_type_label': instance.shippingTypeLabel,
      'payment_status': instance.paymentStatus,
      'payment_status_text': instance.paymentStatusText,
      'payment_method': instance.paymentMethod,
      'driver': instance.driverInfo,
      'order_details': instance.ordersDetails,
      'order_detail_histories': instance.modifiedProducts,
      'order_discounts': instance.discounts,
    };
