// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PharmacyOrderModelImpl _$$PharmacyOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PharmacyOrderModelImpl(
      base: BaseOrderInfo.fromJson(json['base'] as Map<String, dynamic>),
      local: LocalPickingFields.fromJson(json['local'] as Map<String, dynamic>),
      pharmacyOnly: PharmacyOnlyInfoDomainModel.fromJson(
          json['pharmacyOnly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PharmacyOrderModelImplToJson(
        _$PharmacyOrderModelImpl instance) =>
    <String, dynamic>{
      'base': instance.base,
      'local': instance.local,
      'pharmacyOnly': instance.pharmacyOnly,
    };
