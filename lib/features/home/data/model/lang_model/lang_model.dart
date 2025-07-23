import 'package:freezed_annotation/freezed_annotation.dart';

part 'lang_model.freezed.dart';
part 'lang_model.g.dart';

@unfreezed
@immutable
class LangModel with _$LangModel{
  const LangModel._();
  @JsonSerializable(explicitToJson: true)
  factory LangModel({
    required int id,
    required String name,
    required String code,
    required String logo,
    @JsonKey(name: 'is_default',defaultValue: false) bool? isDefault
  }) = _LangModel;


  factory LangModel.fromJson(Map<String, dynamic> json) =>
      _$LangModelFromJson(json);
}