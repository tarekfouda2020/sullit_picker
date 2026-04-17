// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersListImpl _$$OrdersListImplFromJson(Map<String, dynamic> json) =>
    _$OrdersListImpl(
      assignedOrders: (json['assigned_orders'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignedOrdersCount: (json['assigned_orders_count'] as num).toInt(),
      newOrders: (json['new_orders'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersListImplToJson(_$OrdersListImpl instance) =>
    <String, dynamic>{
      'assigned_orders': instance.assignedOrders,
      'assigned_orders_count': instance.assignedOrdersCount,
      'new_orders': instance.newOrders,
    };

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
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
      bagsCount: (json['bag_count'] as num).toInt(),
      bagPrice: (json['bag_price'] as num).toDouble(),
      allowReplacement: json['allow_replacement'] as bool,
      statusLabel: json['status_label'] as String,
      pickerNotes: json['picker_notes'] as String,
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
      displayItems: (json['display_items'] as List<dynamic>?)
          ?.map((e) => OrderDisplayItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      discounts: (json['order_discounts'] as List<dynamic>?)
          ?.map((e) => OrderDiscountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      deletedOrders: (json['deleted_orders'] as List<dynamic>?)
              ?.map(
                  (e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      changedProducts: (json['changed_products'] as List<dynamic>?)
              ?.map(
                  (e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      qntChangedProducts: (json['added_products'] as List<dynamic>?)
              ?.map(
                  (e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pickedPercent: (json['picked_percent'] as num?)?.toDouble() ?? 0.0,
      preparationSeconds: (json['preparation_seconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
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
      'bag_count': instance.bagsCount,
      'bag_price': instance.bagPrice,
      'allow_replacement': instance.allowReplacement,
      'status_label': instance.statusLabel,
      'picker_notes': instance.pickerNotes,
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
      'display_items': instance.displayItems,
      'order_discounts': instance.discounts,
      'deleted_orders': instance.deletedOrders,
      'changed_products': instance.changedProducts,
      'added_products': instance.qntChangedProducts,
      'picked_percent': instance.pickedPercent,
      'preparation_seconds': instance.preparationSeconds,
    };

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      variation: json['variation'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: json['price'] as String,
      unitPrice: json['unit_price'] as String,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      newVariantId: (json['new_variant_id'] as num?)?.toInt() ?? -1,
      addedVariantId: (json['added_variant_id'] as num?)?.toInt() ?? -1,
      newPrice: (json['new_price'] as num?)?.toDouble() ?? 0.0,
      pickerNotes: json['picker_notes'] as String? ?? '',
      fixedUnitPrice: (json['fixed_unit_price'] as num?)?.toDouble() ?? 0.0,
      fixedQnt: (json['fixed_qnt'] as num?)?.toInt() ?? 0,
      oldReplacedModel: json['old_replaced_model'] == null
          ? null
          : OldReplacedModel.fromJson(
              json['old_replaced_model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variation': instance.variation,
      'quantity': instance.quantity,
      'price': instance.price,
      'unit_price': instance.unitPrice,
      'product': instance.product,
      'new_variant_id': instance.newVariantId,
      'added_variant_id': instance.addedVariantId,
      'new_price': instance.newPrice,
      'picker_notes': instance.pickerNotes,
      'fixed_unit_price': instance.fixedUnitPrice,
      'fixed_qnt': instance.fixedQnt,
      'old_replaced_model': instance.oldReplacedModel,
    };

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      barcode: json['barcode'] as String,
      unit: json['unit'] as String,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      thumbnailImage: json['thumbnail_image'] as String,
      isFresh: json['is_fresh'] as bool,
      productPickedPercent: (json['picked_percent'] as num?)?.toDouble() ?? 0.0,
      pickedQuantity: (json['picked_quantity'] as num?)?.toInt() ?? 0,
      productStatus: $enumDecodeNullable(
              _$ProductStatusEnumEnumMap, json['product_status']) ??
          ProductStatusEnum.noEdit,
      showEditPrice: json['show_edit_price'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'barcode': instance.barcode,
      'unit': instance.unit,
      'category': instance.category,
      'thumbnail_image': instance.thumbnailImage,
      'is_fresh': instance.isFresh,
      'picked_percent': instance.productPickedPercent,
      'picked_quantity': instance.pickedQuantity,
      'product_status': _$ProductStatusEnumEnumMap[instance.productStatus],
      'show_edit_price': instance.showEditPrice,
    };

const _$ProductStatusEnumEnumMap = {
  ProductStatusEnum.noEdit: 'noEdit',
  ProductStatusEnum.priceModified: 'priceModified',
  ProductStatusEnum.qntModified: 'qntModified',
  ProductStatusEnum.replaced: 'replaced',
  ProductStatusEnum.added: 'added',
  ProductStatusEnum.normal: 'normal',
};

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      customerType: json['customer_type'] as String,
      customerTypeLabel: json['customer_type_label'] as String,
      shareHolderNumber: json['shareholder_number'] as String?,
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'customer_type': instance.customerType,
      'customer_type_label': instance.customerTypeLabel,
      'shareholder_number': instance.shareHolderNumber,
    };

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      id: (json['id'] as num).toInt(),
      rate: json['avg_rate'] as num,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avg_rate': instance.rate,
      'name': instance.name,
      'avatar': instance.avatar,
      'email': instance.email,
      'phone': instance.phone,
    };

_$OrderDiscountModelImpl _$$OrderDiscountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDiscountModelImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      typeDescription: json['type_description'] as String,
      discountType: json['discount_type'] as String,
      discount: json['discount'] as String,
      discountValue: json['discount_value'] as String,
    );

Map<String, dynamic> _$$OrderDiscountModelImplToJson(
        _$OrderDiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'type_description': instance.typeDescription,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'discount_value': instance.discountValue,
    };

_$ModifiedProductModelImpl _$$ModifiedProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ModifiedProductModelImpl(
      id: (json['id'] as num).toInt(),
      action: json['action'] as String,
      actionLabel: json['action_label'] as String,
      notes: json['notes'] as String? ?? '',
      oldPrice: json['old_price'] as String?,
      newPrice: json['new_price'] as String?,
      oldQuantity: (json['old_quantity'] as num?)?.toInt(),
      newQuantity: (json['new_quantity'] as num?)?.toInt(),
      oldProduct: json['old_product'] == null
          ? null
          : ProductModel.fromJson(json['old_product'] as Map<String, dynamic>),
      newProduct: json['new_product'] == null
          ? null
          : ProductModel.fromJson(json['new_product'] as Map<String, dynamic>),
      oldVariation: json['old_variation'] as String? ?? '',
      newVariation: json['new_variation'] as String? ?? '',
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$ModifiedProductModelImplToJson(
        _$ModifiedProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'action_label': instance.actionLabel,
      'notes': instance.notes,
      'old_price': instance.oldPrice,
      'new_price': instance.newPrice,
      'old_quantity': instance.oldQuantity,
      'new_quantity': instance.newQuantity,
      'old_product': instance.oldProduct,
      'new_product': instance.newProduct,
      'old_variation': instance.oldVariation,
      'new_variation': instance.newVariation,
      'created_at': instance.createdAt,
    };

_$OrderDisplayItemImpl _$$OrderDisplayItemImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDisplayItemImpl(
      current: json['current'] == null
          ? null
          : OrderDetailsModel.fromJson(json['current'] as Map<String, dynamic>),
      history: json['history'] == null
          ? null
          : ModifiedProductModel.fromJson(
              json['history'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDisplayItemImplToJson(
        _$OrderDisplayItemImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'history': instance.history,
    };

_$OldReplacedModelImpl _$$OldReplacedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OldReplacedModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      unitPrice: json['unitPrice'] as String,
      qnt: (json['qnt'] as num).toInt(),
      replaceReason: json['replaceReason'] as String,
    );

Map<String, dynamic> _$$OldReplacedModelImplToJson(
        _$OldReplacedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'unitPrice': instance.unitPrice,
      'qnt': instance.qnt,
      'replaceReason': instance.replaceReason,
    };
