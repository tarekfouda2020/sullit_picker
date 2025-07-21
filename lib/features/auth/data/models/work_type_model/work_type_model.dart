

import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_type_model.freezed.dart';
part 'work_type_model.g.dart';

@unfreezed
@immutable
class WorkTypeModel with _$WorkTypeModel{
   WorkTypeModel._();
  @JsonSerializable(explicitToJson: true)
   factory WorkTypeModel({
    required String key,
    required String label,
    @JsonKey(name: 'is_selected',defaultValue: false) bool? selected,
  }) = _WorkTypeModel;

  factory WorkTypeModel.fromJson(Map<String, dynamic> json) =>
      _$WorkTypeModelFromJson(json);
}