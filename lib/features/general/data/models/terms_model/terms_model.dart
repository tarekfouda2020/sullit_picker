import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_model.freezed.dart';
part 'terms_model.g.dart';

@freezed
@immutable
class TermsModel with _$TermsModel{
  const TermsModel._();
  @JsonSerializable(explicitToJson: true)
  const factory TermsModel({
    required int id,
    required String title,
    required String content,

  }) = _TermsModel;


  factory TermsModel.fromJson(Map<String, dynamic> json) =>
      _$TermsModelFromJson(json);
}
