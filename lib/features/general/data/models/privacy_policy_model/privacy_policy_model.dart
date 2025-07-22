import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_policy_model.freezed.dart';
part 'privacy_policy_model.g.dart';

@freezed
@immutable
class PrivacyPolicyModel with _$PrivacyPolicyModel{
  const PrivacyPolicyModel._();
  @JsonSerializable(explicitToJson: true)
  const factory PrivacyPolicyModel({
    required int id,
    required String title,
    required String content,
  }) = _PrivacyPolicyModel;


  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) =>
      _$PrivacyPolicyModelFromJson(json);
}
