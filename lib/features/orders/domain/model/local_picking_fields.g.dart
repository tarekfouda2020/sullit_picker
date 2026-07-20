// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_picking_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalPickingFieldsImpl _$$LocalPickingFieldsImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalPickingFieldsImpl(
      displayItems: (json['display_items'] as List<dynamic>?)
          ?.map((e) => OrderDisplayItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$LocalPickingFieldsImplToJson(
        _$LocalPickingFieldsImpl instance) =>
    <String, dynamic>{
      'display_items': instance.displayItems,
      'deleted_orders': instance.deletedOrders,
      'changed_products': instance.changedProducts,
      'added_products': instance.qntChangedProducts,
      'picked_percent': instance.pickedPercent,
      'preparation_seconds': instance.preparationSeconds,
    };
