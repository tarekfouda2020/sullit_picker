// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrdersListAdapter extends TypeAdapter<_$OrdersListImpl> {
  @override
  final int typeId = 0;

  @override
  _$OrdersListImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$OrdersListImpl(
      assignedOrders: (fields[0] as List).cast<OrderModel>(),
      assignedOrdersCount: fields[1] as int,
      newOrders: (fields[2] as List).cast<OrderModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$OrdersListImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.assignedOrdersCount)
      ..writeByte(0)
      ..write(obj.assignedOrders)
      ..writeByte(2)
      ..write(obj.newOrders);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrdersListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OrderModelAdapter extends TypeAdapter<_$OOrderModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$OOrderModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$OOrderModelImpl(
      id: fields[0] as int,
      code: fields[1] as String,
      totalItems: fields[2] as int,
      allowReplacement: fields[3] as bool,
      status: fields[4] as String,
      preparationMinutes: fields[5] as int,
      startPickingAt: fields[6] as String,
      ordersDetails: (fields[7] as List?)?.cast<OrderDetailsModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$OOrderModelImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.totalItems)
      ..writeByte(3)
      ..write(obj.allowReplacement)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.preparationMinutes)
      ..writeByte(6)
      ..write(obj.startPickingAt)
      ..writeByte(7)
      ..write(obj.ordersDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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

_$OOrderModelImpl _$$OOrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OOrderModelImpl(
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

Map<String, dynamic> _$$OOrderModelImplToJson(_$OOrderModelImpl instance) =>
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
