import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_model.freezed.dart';

part 'store_model.g.dart';

@unfreezed
@immutable
class StoreModel with _$StoreModel {
  const StoreModel._();

  @JsonSerializable(explicitToJson: true)
  factory StoreModel({
    required int id,
    required String name,
    @JsonKey(name: 'isSelected',defaultValue: false) bool? isSelected,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) => _$StoreModelFromJson(json);
}
