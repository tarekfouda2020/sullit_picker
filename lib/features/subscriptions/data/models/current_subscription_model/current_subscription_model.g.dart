// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentSubscriptionModelImpl _$$CurrentSubscriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentSubscriptionModelImpl(
      subscribed: json['subscribed'] as bool,
      expiresAt: json['expires_at'] as String,
      daysRemaining: (json['days_remaining'] as num).toInt(),
      title: json['title'] as String?,
      price: json['price'] as String,
      description: json['description'] as String?,
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$$CurrentSubscriptionModelImplToJson(
        _$CurrentSubscriptionModelImpl instance) =>
    <String, dynamic>{
      'subscribed': instance.subscribed,
      'expires_at': instance.expiresAt,
      'days_remaining': instance.daysRemaining,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'duration': instance.duration,
    };
