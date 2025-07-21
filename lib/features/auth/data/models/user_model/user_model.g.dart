// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      phone: json['phone'] as String,
      tokenType: json['token_type'] as String,
      emailIsActive: json['email_is_active'] as bool,
      countryCode: json['country_code'] as String,
      fullPhone: json['full_phone'] as String,
      workType: json['work_type'] as String,
      mapDesc: json['map_desc'] as String,
      coverageRadiusKm: (json['coverage_radius_km'] as num).toInt(),
      isAvailable: json['is_available'] as bool,
      idImageFront: json['id_image_front'] as String,
      idImageBack: json['id_image_back'] as String,
      licenseImageFront: json['license_image_front'] as String,
      licenseImageBack: json['license_image_back'] as String,
      hasSubscription: json['has_subscription'] as bool,
      hasActiveSubscription: json['has_active_subscription'] as bool,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
      'lat': instance.lat,
      'lng': instance.lng,
      'phone': instance.phone,
      'token_type': instance.tokenType,
      'email_is_active': instance.emailIsActive,
      'country_code': instance.countryCode,
      'full_phone': instance.fullPhone,
      'work_type': instance.workType,
      'map_desc': instance.mapDesc,
      'coverage_radius_km': instance.coverageRadiusKm,
      'is_available': instance.isAvailable,
      'id_image_front': instance.idImageFront,
      'id_image_back': instance.idImageBack,
      'license_image_front': instance.licenseImageFront,
      'license_image_back': instance.licenseImageBack,
      'has_subscription': instance.hasSubscription,
      'has_active_subscription': instance.hasActiveSubscription,
    };
