import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_subscribe_plan_model.freezed.dart';
part 'set_subscribe_plan_model.g.dart';

@freezed
class SetSubscribePlanModel with _$SetSubscribePlanModel{
  const SetSubscribePlanModel._();
  @JsonSerializable(explicitToJson: true)
  factory SetSubscribePlanModel({
    @JsonKey(name: "starts_at")  String? startsAt,
    @JsonKey(name: "expires_at")  String? expiresAt,
    @JsonKey(name: "transaction_url")  String? transactionUrl,
  }) = _SetSubscribePlanModel;


  factory SetSubscribePlanModel.fromJson(Map<String, dynamic> json) =>
      _$SetSubscribePlanModelFromJson(json);
}