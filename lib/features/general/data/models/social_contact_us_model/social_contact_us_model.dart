import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_contact_us_model.freezed.dart';
part 'social_contact_us_model.g.dart';

@freezed
class SocialContactUsModel with _$SocialContactUsModel{
  const SocialContactUsModel._();
  @JsonSerializable(explicitToJson: true)
  factory SocialContactUsModel({
    required String url,
    required String image,
  }) = _SocialContactUsModel;


  factory SocialContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$SocialContactUsModelFromJson(json);
}