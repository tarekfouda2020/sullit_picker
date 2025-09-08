// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportReasonModelImpl _$$ReportReasonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportReasonModelImpl(
      key: json['key'] as String,
      label: json['label'] as String,
      isSelected: json['is_selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$ReportReasonModelImplToJson(
        _$ReportReasonModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'is_selected': instance.isSelected,
    };
