// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_prescription_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcceptPrescriptionPreviewModelImpl
    _$$AcceptPrescriptionPreviewModelImplFromJson(Map<String, dynamic> json) =>
        _$AcceptPrescriptionPreviewModelImpl(
          total: json['total'] as String,
          subtotal: json['subtotal'] as String,
          tax: json['tax'] as String,
          discounts: (json['order_discounts'] as List<dynamic>)
              .map(
                  (e) => OrderDiscountModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AcceptPrescriptionPreviewModelImplToJson(
        _$AcceptPrescriptionPreviewModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'order_discounts': instance.discounts.map((e) => e.toJson()).toList(),
    };
