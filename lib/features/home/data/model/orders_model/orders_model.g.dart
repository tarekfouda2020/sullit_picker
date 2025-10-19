// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersModelImpl _$$OrdersModelImplFromJson(Map<String, dynamic> json) =>
    _$OrdersModelImpl(
      assignedOrders: (json['assigned_orders'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignedOrdersCount: (json['assigned_orders_count'] as num).toInt(),
      newOrders: (json['new_orders'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersModelImplToJson(_$OrdersModelImpl instance) =>
    <String, dynamic>{
      'assigned_orders': instance.assignedOrders,
      'assigned_orders_count': instance.assignedOrdersCount,
      'new_orders': instance.newOrders,
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
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
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'total_items': instance.totalItems,
      'allow_replacement': instance.allowReplacement,
      'status': instance.status,
      'preparation_minutes': instance.preparationMinutes,
      'start_picking_at': instance.startPickingAt,
      'order_details': instance.ordersDetails,
    };

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      variation: json['variation'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: json['price'] as String,
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
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
      thumbnailImage: json['thumbnail_image'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail_image': instance.thumbnailImage,
    };
