// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodModelImpl _$$PaymentMethodModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodModelImpl(
      paymentType: json['payment_type'] as String,
      paymentTypeKey: json['payment_type_key'] as String,
      offLinePaymentId: (json['offline_payment_id'] as num).toInt(),
      isSelected: json['is_selected'] as bool? ?? false,
      image: json['image'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      details: json['details'] as String,
    );

Map<String, dynamic> _$$PaymentMethodModelImplToJson(
        _$PaymentMethodModelImpl instance) =>
    <String, dynamic>{
      'payment_type': instance.paymentType,
      'payment_type_key': instance.paymentTypeKey,
      'offline_payment_id': instance.offLinePaymentId,
      'is_selected': instance.isSelected,
      'image': instance.image,
      'name': instance.name,
      'title': instance.title,
      'details': instance.details,
    };
