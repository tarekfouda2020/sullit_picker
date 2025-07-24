import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_model.freezed.dart';
part 'statistics_model.g.dart';

@freezed
class StatisticsModel with _$StatisticsModel{
  const StatisticsModel._();
  @JsonSerializable(explicitToJson: true)
  factory StatisticsModel({
    @JsonKey(name: "total_orders") required int totalOrders,
    @JsonKey(name: "completed_orders") required int completedOrders,
    @JsonKey(name: "failed_orders") required int failedOrders,
  }) = _StatisticsModel;


  factory StatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$StatisticsModelFromJson(json);
}