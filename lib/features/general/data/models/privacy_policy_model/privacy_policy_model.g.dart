// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_policy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivacyPolicyModelImpl _$$PrivacyPolicyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivacyPolicyModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$PrivacyPolicyModelImplToJson(
        _$PrivacyPolicyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };
