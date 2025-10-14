import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required String name,
    required String email,
    required String token,
    @JsonKey(name: 'token_type') required String tokenType,
    required String avatar,
    @JsonKey(name: 'is_available') required bool isAvailable,
    @JsonKey(name: 'seller_name') required String sellerName,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
