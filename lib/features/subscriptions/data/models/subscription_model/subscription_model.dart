import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

@freezed
class SubscriptionModel with _$SubscriptionModel{
  const SubscriptionModel._();
  @JsonSerializable(explicitToJson: true)
  factory SubscriptionModel({
    String? title,
    required String price,
     String? description,
    required String duration,
  }) = _SubscriptionModel;


  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);
}