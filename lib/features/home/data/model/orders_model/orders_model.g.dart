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
      totalItems: (json['total_items'] as num).toInt(),
      bagsCount: (json['bag_count'] as num).toInt(),
      bagPrice: (json['bag_price'] as num).toDouble(),
      allowReplacement: json['allow_replacement'] as bool,
      statusLabel: json['status_label'] as String,
      preparationMinutes: (json['preparation_minutes'] as num).toInt(),
      startPickingAt: json['start_picking_at'] as String,
      deliveredAt: json['delivered_at'] as String,
      paymentStatus: json['payment_status'] as bool?,
      paymentStatusText: json['payment_status_text'] as String?,
      paymentMethod: json['payment_method'] as String?,
      driverInfo: json['driver'] == null
          ? null
          : DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
      ordersDetails: (json['order_details'] as List<dynamic>?)
          ?.map((e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
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
      qntChangedProducts: (json['qnt_changed_products'] as List<dynamic>?)
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
      'total_items': instance.totalItems,
      'bag_count': instance.bagsCount,
      'bag_price': instance.bagPrice,
      'allow_replacement': instance.allowReplacement,
      'status_label': instance.statusLabel,
      'preparation_minutes': instance.preparationMinutes,
      'start_picking_at': instance.startPickingAt,
      'delivered_at': instance.deliveredAt,
      'payment_status': instance.paymentStatus,
      'payment_status_text': instance.paymentStatusText,
      'payment_method': instance.paymentMethod,
      'driver': instance.driverInfo,
      'order_details': instance.ordersDetails,
      'deleted_orders': instance.deletedOrders,
      'changed_products': instance.changedProducts,
      'qnt_changed_products': instance.qntChangedProducts,
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
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
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
