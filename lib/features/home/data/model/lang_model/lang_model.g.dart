// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lang_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LangModelImpl _$$LangModelImplFromJson(Map<String, dynamic> json) =>
    _$LangModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      logo: json['logo'] as String,
      isDefault: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$$LangModelImplToJson(_$LangModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'logo': instance.logo,
      'is_default': instance.isDefault,
    };
