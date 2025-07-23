import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_for_order_model.freezed.dart';
part 'available_for_order_model.g.dart';

@freezed
class AvailableForOrderModel with _$AvailableForOrderModel{
  const AvailableForOrderModel._();
  @JsonSerializable(explicitToJson: true)
  factory AvailableForOrderModel({
   required String msg,
    required ToggleAvailableForOrderModel data
  }) = _AvailableForOrderModel;


  factory AvailableForOrderModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableForOrderModelFromJson(json);
}


@freezed
class ToggleAvailableForOrderModel with _$ToggleAvailableForOrderModel{
  const ToggleAvailableForOrderModel._();
  @JsonSerializable(explicitToJson: true)
  factory ToggleAvailableForOrderModel({
    @JsonKey(name: "is_available") required bool isAvailable
  }) = _ToggleAvailableForOrderModel;


  factory ToggleAvailableForOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ToggleAvailableForOrderModelFromJson(json);
}