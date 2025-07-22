import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_subscription_model.freezed.dart';
part 'current_subscription_model.g.dart';

@freezed
class CurrentSubscriptionModel with _$CurrentSubscriptionModel{
  const CurrentSubscriptionModel._();
  @JsonSerializable(explicitToJson: true)
  factory CurrentSubscriptionModel({
    required bool subscribed,
   @JsonKey(name: "expires_at") required String expiresAt,
    @JsonKey(name: "days_remaining") required int daysRemaining,
    required String? title,
    required String price,
    required String? description,
    required String duration,
  }) = _CurrentSubscriptionModel;

  factory CurrentSubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentSubscriptionModelFromJson(json);
}