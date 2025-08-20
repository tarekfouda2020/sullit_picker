// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstructionsModelImpl _$$InstructionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InstructionsModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$InstructionsModelImplToJson(
        _$InstructionsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };
