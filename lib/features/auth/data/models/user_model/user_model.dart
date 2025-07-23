import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/auth/domain/models/user_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
@immutable
class UserModel extends BaseApiModel<UserDomainModel> with _$UserModel {
  const UserModel._();

  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    required int id,
    required String name,
    required String email,
    required String token,
    required String lat,
    required String lng,
    required String phone,
    String? avatar,
    @JsonKey(name: "avg_rate")  double? rate,
    @JsonKey(name: "token_type") required String tokenType,
    @JsonKey(name: "email_is_active") required bool emailIsActive,
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "full_phone") required String fullPhone,
    @JsonKey(name: "work_type") required String workType,
    @JsonKey(name: "map_desc") required String mapDesc,
    @JsonKey(name: "coverage_radius_km") required int coverageRadiusKm,
    @JsonKey(name: "is_available") required bool isAvailable,
    @JsonKey(name: "id_image_front") required String idImageFront,
    @JsonKey(name: "id_image_back") required String idImageBack,
    @JsonKey(name: "license_image_front") required String licenseImageFront,
    @JsonKey(name: "license_image_back") required String licenseImageBack,
    @JsonKey(name: "has_subscription") required bool hasSubscription,
    @JsonKey(name: "has_active_subscription") required bool hasActiveSubscription,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  @override
  UserDomainModel toDomainModel() {
    return UserDomainModel(
      id: id.toString(),
      name: name,
      email: email,
      token: token,
      tokenType: tokenType,
      emailIsActive: emailIsActive,
      countryCode: countryCode,
      phone: phone,
      fullPhone: fullPhone,
      workType: workType,
      mapDesc: mapDesc,
      lat: lat,
      lng: lng,
      coverageRadiusKm: coverageRadiusKm,
      isAvailable: isAvailable,
      idImageFront: idImageFront,
      idImageBack: idImageBack,
      licenseImageFront: licenseImageFront,
      licenseImageBack: licenseImageBack,
      hasSubscription: hasSubscription,
      hasActiveSubscription: hasActiveSubscription,
    );
  }
}

