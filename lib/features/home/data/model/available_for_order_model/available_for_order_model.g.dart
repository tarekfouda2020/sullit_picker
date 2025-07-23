// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_for_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableForOrderModelImpl _$$AvailableForOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableForOrderModelImpl(
      msg: json['msg'] as String,
      data: ToggleAvailableForOrderModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AvailableForOrderModelImplToJson(
        _$AvailableForOrderModelImpl instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'data': instance.data.toJson(),
    };

_$ToggleAvailableForOrderModelImpl _$$ToggleAvailableForOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleAvailableForOrderModelImpl(
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$$ToggleAvailableForOrderModelImplToJson(
        _$ToggleAvailableForOrderModelImpl instance) =>
    <String, dynamic>{
      'is_available': instance.isAvailable,
    };
