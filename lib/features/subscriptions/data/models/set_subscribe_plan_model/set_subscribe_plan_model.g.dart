// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_subscribe_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetSubscribePlanModelImpl _$$SetSubscribePlanModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetSubscribePlanModelImpl(
      startsAt: json['starts_at'] as String?,
      expiresAt: json['expires_at'] as String?,
      transactionUrl: json['transaction_url'] as String?,
    );

Map<String, dynamic> _$$SetSubscribePlanModelImplToJson(
        _$SetSubscribePlanModelImpl instance) =>
    <String, dynamic>{
      'starts_at': instance.startsAt,
      'expires_at': instance.expiresAt,
      'transaction_url': instance.transactionUrl,
    };
