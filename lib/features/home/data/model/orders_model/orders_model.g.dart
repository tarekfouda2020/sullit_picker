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
      code: json['code'] as String,
      totalItems: (json['total_items'] as num).toInt(),
      allowReplacement: json['allow_replacement'] as bool,
      status: json['status'] as String,
      preparationMinutes: (json['preparation_minutes'] as num).toInt(),
      startPickingAt: json['start_picking_at'] as String,
      ordersDetails: (json['order_details'] as List<dynamic>?)
          ?.map((e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pickedPercent: (json['picked_percent'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'total_items': instance.totalItems,
      'allow_replacement': instance.allowReplacement,
      'status': instance.status,
      'preparation_minutes': instance.preparationMinutes,
      'start_picking_at': instance.startPickingAt,
      'order_details': instance.ordersDetails,
      'picked_percent': instance.pickedPercent,
    };

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      variation: json['variation'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: json['price'] as String,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variation': instance.variation,
      'quantity': instance.quantity,
      'price': instance.price,
      'product': instance.product,
    };

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      thumbnailImage: json['thumbnail_image'] as String,
      productPickedPercent: (json['picked_percent'] as num?)?.toDouble() ?? 0.0,
      pickedQuantity: (json['picked_quantity'] as num?)?.toInt() ?? 0,
      productStatus: $enumDecodeNullable(
              _$ProductStatusEnumEnumMap, json['product_status']) ??
          ProductStatusEnum.noEdit,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'thumbnail_image': instance.thumbnailImage,
      'picked_percent': instance.productPickedPercent,
      'picked_quantity': instance.pickedQuantity,
      'product_status': _$ProductStatusEnumEnumMap[instance.productStatus],
    };

const _$ProductStatusEnumEnumMap = {
  ProductStatusEnum.noEdit: 'noEdit',
  ProductStatusEnum.modified: 'modified',
  ProductStatusEnum.replaced: 'replaced',
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
