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
      title: json['title'] as String,
      data: NotificationData.fromJson(json['data'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'title': instance.title,
      'data': instance.data,
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
