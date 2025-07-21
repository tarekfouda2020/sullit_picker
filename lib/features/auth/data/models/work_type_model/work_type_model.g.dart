// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkTypeModelImpl _$$WorkTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkTypeModelImpl(
      key: json['key'] as String,
      label: json['label'] as String,
      selected: json['is_selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$WorkTypeModelImplToJson(_$WorkTypeModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'is_selected': instance.selected,
    };
