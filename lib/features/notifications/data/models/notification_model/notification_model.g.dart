// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      orderId: (json['order_id'] as num).toInt(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'order_id': instance.orderId,
      'created_at': instance.createdAt,
    };

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      type: json['type'] as String,
      orderId: (json['id'] as num).toInt(),
      orderCode: json['order_code'] as String,
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.orderId,
      'order_code': instance.orderCode,
    };
