import 'package:freezed_annotation/freezed_annotation.dart';

part 'instructions_model.freezed.dart';
part 'instructions_model.g.dart';

@freezed
class InstructionsModel with _$InstructionsModel{
  const InstructionsModel._();
  @JsonSerializable(explicitToJson: true)
  factory InstructionsModel({
    required int id,
    required String title,
    required String content,
  }) = _InstructionsModel;


  factory InstructionsModel.fromJson(Map<String, dynamic> json) =>
      _$InstructionsModelFromJson(json);
}