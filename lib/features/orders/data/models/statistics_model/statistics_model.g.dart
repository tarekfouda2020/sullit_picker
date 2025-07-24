// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsModelImpl _$$StatisticsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsModelImpl(
      totalOrders: (json['total_orders'] as num).toInt(),
      completedOrders: (json['completed_orders'] as num).toInt(),
      failedOrders: (json['failed_orders'] as num).toInt(),
    );

Map<String, dynamic> _$$StatisticsModelImplToJson(
        _$StatisticsModelImpl instance) =>
    <String, dynamic>{
      'total_orders': instance.totalOrders,
      'completed_orders': instance.completedOrders,
      'failed_orders': instance.failedOrders,
    };
