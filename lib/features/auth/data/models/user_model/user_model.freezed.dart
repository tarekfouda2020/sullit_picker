// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_rate")
  double? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "approve_status")
  String get approveStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "approve_status_label")
  String get approveStatusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "token_type")
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: "email_is_active")
  bool get emailIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "full_phone")
  String get fullPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "work_type")
  String get workType => throw _privateConstructorUsedError;
  @JsonKey(name: "map_desc")
  String get mapDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "coverage_radius_km")
  int get coverageRadiusKm => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available")
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "id_image_front")
  String get idImageFront => throw _privateConstructorUsedError;
  @JsonKey(name: "id_image_back")
  String get idImageBack => throw _privateConstructorUsedError;
  @JsonKey(name: "license_image_front")
  String get licenseImageFront => throw _privateConstructorUsedError;
  @JsonKey(name: "license_image_back")
  String get licenseImageBack => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_balance")
  String get walletBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "has_subscription")
  bool get hasSubscription => throw _privateConstructorUsedError;
  @JsonKey(name: "has_active_subscription")
  bool get hasActiveSubscription => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String token,
      String lat,
      String lng,
      String phone,
      String? avatar,
      @JsonKey(name: "avg_rate") double? rate,
      @JsonKey(name: "approve_status") String approveStatus,
      @JsonKey(name: "approve_status_label") String approveStatusLabel,
      @JsonKey(name: "token_type") String tokenType,
      @JsonKey(name: "email_is_active") bool emailIsActive,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "full_phone") String fullPhone,
      @JsonKey(name: "work_type") String workType,
      @JsonKey(name: "map_desc") String mapDesc,
      @JsonKey(name: "coverage_radius_km") int coverageRadiusKm,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "id_image_front") String idImageFront,
      @JsonKey(name: "id_image_back") String idImageBack,
      @JsonKey(name: "license_image_front") String licenseImageFront,
      @JsonKey(name: "license_image_back") String licenseImageBack,
      @JsonKey(name: "wallet_balance") String walletBalance,
      @JsonKey(name: "has_subscription") bool hasSubscription,
      @JsonKey(name: "has_active_subscription") bool hasActiveSubscription});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? token = null,
    Object? lat = null,
    Object? lng = null,
    Object? phone = null,
    Object? avatar = freezed,
    Object? rate = freezed,
    Object? approveStatus = null,
    Object? approveStatusLabel = null,
    Object? tokenType = null,
    Object? emailIsActive = null,
    Object? countryCode = null,
    Object? fullPhone = null,
    Object? workType = null,
    Object? mapDesc = null,
    Object? coverageRadiusKm = null,
    Object? isAvailable = null,
    Object? idImageFront = null,
    Object? idImageBack = null,
    Object? licenseImageFront = null,
    Object? licenseImageBack = null,
    Object? walletBalance = null,
    Object? hasSubscription = null,
    Object? hasActiveSubscription = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      approveStatus: null == approveStatus
          ? _value.approveStatus
          : approveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      approveStatusLabel: null == approveStatusLabel
          ? _value.approveStatusLabel
          : approveStatusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      emailIsActive: null == emailIsActive
          ? _value.emailIsActive
          : emailIsActive // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullPhone: null == fullPhone
          ? _value.fullPhone
          : fullPhone // ignore: cast_nullable_to_non_nullable
              as String,
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as String,
      mapDesc: null == mapDesc
          ? _value.mapDesc
          : mapDesc // ignore: cast_nullable_to_non_nullable
              as String,
      coverageRadiusKm: null == coverageRadiusKm
          ? _value.coverageRadiusKm
          : coverageRadiusKm // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      idImageFront: null == idImageFront
          ? _value.idImageFront
          : idImageFront // ignore: cast_nullable_to_non_nullable
              as String,
      idImageBack: null == idImageBack
          ? _value.idImageBack
          : idImageBack // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImageFront: null == licenseImageFront
          ? _value.licenseImageFront
          : licenseImageFront // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImageBack: null == licenseImageBack
          ? _value.licenseImageBack
          : licenseImageBack // ignore: cast_nullable_to_non_nullable
              as String,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
      hasSubscription: null == hasSubscription
          ? _value.hasSubscription
          : hasSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      hasActiveSubscription: null == hasActiveSubscription
          ? _value.hasActiveSubscription
          : hasActiveSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String token,
      String lat,
      String lng,
      String phone,
      String? avatar,
      @JsonKey(name: "avg_rate") double? rate,
      @JsonKey(name: "approve_status") String approveStatus,
      @JsonKey(name: "approve_status_label") String approveStatusLabel,
      @JsonKey(name: "token_type") String tokenType,
      @JsonKey(name: "email_is_active") bool emailIsActive,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "full_phone") String fullPhone,
      @JsonKey(name: "work_type") String workType,
      @JsonKey(name: "map_desc") String mapDesc,
      @JsonKey(name: "coverage_radius_km") int coverageRadiusKm,
      @JsonKey(name: "is_available") bool isAvailable,
      @JsonKey(name: "id_image_front") String idImageFront,
      @JsonKey(name: "id_image_back") String idImageBack,
      @JsonKey(name: "license_image_front") String licenseImageFront,
      @JsonKey(name: "license_image_back") String licenseImageBack,
      @JsonKey(name: "wallet_balance") String walletBalance,
      @JsonKey(name: "has_subscription") bool hasSubscription,
      @JsonKey(name: "has_active_subscription") bool hasActiveSubscription});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? token = null,
    Object? lat = null,
    Object? lng = null,
    Object? phone = null,
    Object? avatar = freezed,
    Object? rate = freezed,
    Object? approveStatus = null,
    Object? approveStatusLabel = null,
    Object? tokenType = null,
    Object? emailIsActive = null,
    Object? countryCode = null,
    Object? fullPhone = null,
    Object? workType = null,
    Object? mapDesc = null,
    Object? coverageRadiusKm = null,
    Object? isAvailable = null,
    Object? idImageFront = null,
    Object? idImageBack = null,
    Object? licenseImageFront = null,
    Object? licenseImageBack = null,
    Object? walletBalance = null,
    Object? hasSubscription = null,
    Object? hasActiveSubscription = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      approveStatus: null == approveStatus
          ? _value.approveStatus
          : approveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      approveStatusLabel: null == approveStatusLabel
          ? _value.approveStatusLabel
          : approveStatusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      emailIsActive: null == emailIsActive
          ? _value.emailIsActive
          : emailIsActive // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullPhone: null == fullPhone
          ? _value.fullPhone
          : fullPhone // ignore: cast_nullable_to_non_nullable
              as String,
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as String,
      mapDesc: null == mapDesc
          ? _value.mapDesc
          : mapDesc // ignore: cast_nullable_to_non_nullable
              as String,
      coverageRadiusKm: null == coverageRadiusKm
          ? _value.coverageRadiusKm
          : coverageRadiusKm // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      idImageFront: null == idImageFront
          ? _value.idImageFront
          : idImageFront // ignore: cast_nullable_to_non_nullable
              as String,
      idImageBack: null == idImageBack
          ? _value.idImageBack
          : idImageBack // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImageFront: null == licenseImageFront
          ? _value.licenseImageFront
          : licenseImageFront // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImageBack: null == licenseImageBack
          ? _value.licenseImageBack
          : licenseImageBack // ignore: cast_nullable_to_non_nullable
              as String,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
      hasSubscription: null == hasSubscription
          ? _value.hasSubscription
          : hasSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      hasActiveSubscription: null == hasActiveSubscription
          ? _value.hasActiveSubscription
          : hasActiveSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.token,
      required this.lat,
      required this.lng,
      required this.phone,
      this.avatar,
      @JsonKey(name: "avg_rate") this.rate,
      @JsonKey(name: "approve_status") required this.approveStatus,
      @JsonKey(name: "approve_status_label") required this.approveStatusLabel,
      @JsonKey(name: "token_type") required this.tokenType,
      @JsonKey(name: "email_is_active") required this.emailIsActive,
      @JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "full_phone") required this.fullPhone,
      @JsonKey(name: "work_type") required this.workType,
      @JsonKey(name: "map_desc") required this.mapDesc,
      @JsonKey(name: "coverage_radius_km") required this.coverageRadiusKm,
      @JsonKey(name: "is_available") required this.isAvailable,
      @JsonKey(name: "id_image_front") required this.idImageFront,
      @JsonKey(name: "id_image_back") required this.idImageBack,
      @JsonKey(name: "license_image_front") required this.licenseImageFront,
      @JsonKey(name: "license_image_back") required this.licenseImageBack,
      @JsonKey(name: "wallet_balance") required this.walletBalance,
      @JsonKey(name: "has_subscription") required this.hasSubscription,
      @JsonKey(name: "has_active_subscription")
      required this.hasActiveSubscription})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String token;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String phone;
  @override
  final String? avatar;
  @override
  @JsonKey(name: "avg_rate")
  final double? rate;
  @override
  @JsonKey(name: "approve_status")
  final String approveStatus;
  @override
  @JsonKey(name: "approve_status_label")
  final String approveStatusLabel;
  @override
  @JsonKey(name: "token_type")
  final String tokenType;
  @override
  @JsonKey(name: "email_is_active")
  final bool emailIsActive;
  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "full_phone")
  final String fullPhone;
  @override
  @JsonKey(name: "work_type")
  final String workType;
  @override
  @JsonKey(name: "map_desc")
  final String mapDesc;
  @override
  @JsonKey(name: "coverage_radius_km")
  final int coverageRadiusKm;
  @override
  @JsonKey(name: "is_available")
  final bool isAvailable;
  @override
  @JsonKey(name: "id_image_front")
  final String idImageFront;
  @override
  @JsonKey(name: "id_image_back")
  final String idImageBack;
  @override
  @JsonKey(name: "license_image_front")
  final String licenseImageFront;
  @override
  @JsonKey(name: "license_image_back")
  final String licenseImageBack;
  @override
  @JsonKey(name: "wallet_balance")
  final String walletBalance;
  @override
  @JsonKey(name: "has_subscription")
  final bool hasSubscription;
  @override
  @JsonKey(name: "has_active_subscription")
  final bool hasActiveSubscription;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, token: $token, lat: $lat, lng: $lng, phone: $phone, avatar: $avatar, rate: $rate, approveStatus: $approveStatus, approveStatusLabel: $approveStatusLabel, tokenType: $tokenType, emailIsActive: $emailIsActive, countryCode: $countryCode, fullPhone: $fullPhone, workType: $workType, mapDesc: $mapDesc, coverageRadiusKm: $coverageRadiusKm, isAvailable: $isAvailable, idImageFront: $idImageFront, idImageBack: $idImageBack, licenseImageFront: $licenseImageFront, licenseImageBack: $licenseImageBack, walletBalance: $walletBalance, hasSubscription: $hasSubscription, hasActiveSubscription: $hasActiveSubscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.approveStatus, approveStatus) ||
                other.approveStatus == approveStatus) &&
            (identical(other.approveStatusLabel, approveStatusLabel) ||
                other.approveStatusLabel == approveStatusLabel) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.emailIsActive, emailIsActive) ||
                other.emailIsActive == emailIsActive) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.fullPhone, fullPhone) ||
                other.fullPhone == fullPhone) &&
            (identical(other.workType, workType) ||
                other.workType == workType) &&
            (identical(other.mapDesc, mapDesc) || other.mapDesc == mapDesc) &&
            (identical(other.coverageRadiusKm, coverageRadiusKm) ||
                other.coverageRadiusKm == coverageRadiusKm) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.idImageFront, idImageFront) ||
                other.idImageFront == idImageFront) &&
            (identical(other.idImageBack, idImageBack) ||
                other.idImageBack == idImageBack) &&
            (identical(other.licenseImageFront, licenseImageFront) ||
                other.licenseImageFront == licenseImageFront) &&
            (identical(other.licenseImageBack, licenseImageBack) ||
                other.licenseImageBack == licenseImageBack) &&
            (identical(other.walletBalance, walletBalance) ||
                other.walletBalance == walletBalance) &&
            (identical(other.hasSubscription, hasSubscription) ||
                other.hasSubscription == hasSubscription) &&
            (identical(other.hasActiveSubscription, hasActiveSubscription) ||
                other.hasActiveSubscription == hasActiveSubscription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        token,
        lat,
        lng,
        phone,
        avatar,
        rate,
        approveStatus,
        approveStatusLabel,
        tokenType,
        emailIsActive,
        countryCode,
        fullPhone,
        workType,
        mapDesc,
        coverageRadiusKm,
        isAvailable,
        idImageFront,
        idImageBack,
        licenseImageFront,
        licenseImageBack,
        walletBalance,
        hasSubscription,
        hasActiveSubscription
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {required final int id,
      required final String name,
      required final String email,
      required final String token,
      required final String lat,
      required final String lng,
      required final String phone,
      final String? avatar,
      @JsonKey(name: "avg_rate") final double? rate,
      @JsonKey(name: "approve_status") required final String approveStatus,
      @JsonKey(name: "approve_status_label")
      required final String approveStatusLabel,
      @JsonKey(name: "token_type") required final String tokenType,
      @JsonKey(name: "email_is_active") required final bool emailIsActive,
      @JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "full_phone") required final String fullPhone,
      @JsonKey(name: "work_type") required final String workType,
      @JsonKey(name: "map_desc") required final String mapDesc,
      @JsonKey(name: "coverage_radius_km") required final int coverageRadiusKm,
      @JsonKey(name: "is_available") required final bool isAvailable,
      @JsonKey(name: "id_image_front") required final String idImageFront,
      @JsonKey(name: "id_image_back") required final String idImageBack,
      @JsonKey(name: "license_image_front")
      required final String licenseImageFront,
      @JsonKey(name: "license_image_back")
      required final String licenseImageBack,
      @JsonKey(name: "wallet_balance") required final String walletBalance,
      @JsonKey(name: "has_subscription") required final bool hasSubscription,
      @JsonKey(name: "has_active_subscription")
      required final bool hasActiveSubscription}) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get token;
  @override
  String get lat;
  @override
  String get lng;
  @override
  String get phone;
  @override
  String? get avatar;
  @override
  @JsonKey(name: "avg_rate")
  double? get rate;
  @override
  @JsonKey(name: "approve_status")
  String get approveStatus;
  @override
  @JsonKey(name: "approve_status_label")
  String get approveStatusLabel;
  @override
  @JsonKey(name: "token_type")
  String get tokenType;
  @override
  @JsonKey(name: "email_is_active")
  bool get emailIsActive;
  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "full_phone")
  String get fullPhone;
  @override
  @JsonKey(name: "work_type")
  String get workType;
  @override
  @JsonKey(name: "map_desc")
  String get mapDesc;
  @override
  @JsonKey(name: "coverage_radius_km")
  int get coverageRadiusKm;
  @override
  @JsonKey(name: "is_available")
  bool get isAvailable;
  @override
  @JsonKey(name: "id_image_front")
  String get idImageFront;
  @override
  @JsonKey(name: "id_image_back")
  String get idImageBack;
  @override
  @JsonKey(name: "license_image_front")
  String get licenseImageFront;
  @override
  @JsonKey(name: "license_image_back")
  String get licenseImageBack;
  @override
  @JsonKey(name: "wallet_balance")
  String get walletBalance;
  @override
  @JsonKey(name: "has_subscription")
  bool get hasSubscription;
  @override
  @JsonKey(name: "has_active_subscription")
  bool get hasActiveSubscription;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
