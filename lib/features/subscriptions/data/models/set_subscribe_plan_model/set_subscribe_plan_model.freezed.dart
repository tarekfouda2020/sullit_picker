// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_subscribe_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetSubscribePlanModel _$SetSubscribePlanModelFromJson(
    Map<String, dynamic> json) {
  return _SetSubscribePlanModel.fromJson(json);
}

/// @nodoc
mixin _$SetSubscribePlanModel {
  @JsonKey(name: "starts_at")
  String? get startsAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_at")
  String? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_url")
  String? get transactionUrl => throw _privateConstructorUsedError;

  /// Serializes this SetSubscribePlanModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetSubscribePlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetSubscribePlanModelCopyWith<SetSubscribePlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSubscribePlanModelCopyWith<$Res> {
  factory $SetSubscribePlanModelCopyWith(SetSubscribePlanModel value,
          $Res Function(SetSubscribePlanModel) then) =
      _$SetSubscribePlanModelCopyWithImpl<$Res, SetSubscribePlanModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "starts_at") String? startsAt,
      @JsonKey(name: "expires_at") String? expiresAt,
      @JsonKey(name: "transaction_url") String? transactionUrl});
}

/// @nodoc
class _$SetSubscribePlanModelCopyWithImpl<$Res,
        $Val extends SetSubscribePlanModel>
    implements $SetSubscribePlanModelCopyWith<$Res> {
  _$SetSubscribePlanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetSubscribePlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? transactionUrl = freezed,
  }) {
    return _then(_value.copyWith(
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetSubscribePlanModelImplCopyWith<$Res>
    implements $SetSubscribePlanModelCopyWith<$Res> {
  factory _$$SetSubscribePlanModelImplCopyWith(
          _$SetSubscribePlanModelImpl value,
          $Res Function(_$SetSubscribePlanModelImpl) then) =
      __$$SetSubscribePlanModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "starts_at") String? startsAt,
      @JsonKey(name: "expires_at") String? expiresAt,
      @JsonKey(name: "transaction_url") String? transactionUrl});
}

/// @nodoc
class __$$SetSubscribePlanModelImplCopyWithImpl<$Res>
    extends _$SetSubscribePlanModelCopyWithImpl<$Res,
        _$SetSubscribePlanModelImpl>
    implements _$$SetSubscribePlanModelImplCopyWith<$Res> {
  __$$SetSubscribePlanModelImplCopyWithImpl(_$SetSubscribePlanModelImpl _value,
      $Res Function(_$SetSubscribePlanModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetSubscribePlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? transactionUrl = freezed,
  }) {
    return _then(_$SetSubscribePlanModelImpl(
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SetSubscribePlanModelImpl extends _SetSubscribePlanModel {
  _$SetSubscribePlanModelImpl(
      {@JsonKey(name: "starts_at") this.startsAt,
      @JsonKey(name: "expires_at") this.expiresAt,
      @JsonKey(name: "transaction_url") this.transactionUrl})
      : super._();

  factory _$SetSubscribePlanModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetSubscribePlanModelImplFromJson(json);

  @override
  @JsonKey(name: "starts_at")
  final String? startsAt;
  @override
  @JsonKey(name: "expires_at")
  final String? expiresAt;
  @override
  @JsonKey(name: "transaction_url")
  final String? transactionUrl;

  @override
  String toString() {
    return 'SetSubscribePlanModel(startsAt: $startsAt, expiresAt: $expiresAt, transactionUrl: $transactionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSubscribePlanModelImpl &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.transactionUrl, transactionUrl) ||
                other.transactionUrl == transactionUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startsAt, expiresAt, transactionUrl);

  /// Create a copy of SetSubscribePlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSubscribePlanModelImplCopyWith<_$SetSubscribePlanModelImpl>
      get copyWith => __$$SetSubscribePlanModelImplCopyWithImpl<
          _$SetSubscribePlanModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetSubscribePlanModelImplToJson(
      this,
    );
  }
}

abstract class _SetSubscribePlanModel extends SetSubscribePlanModel {
  factory _SetSubscribePlanModel(
          {@JsonKey(name: "starts_at") final String? startsAt,
          @JsonKey(name: "expires_at") final String? expiresAt,
          @JsonKey(name: "transaction_url") final String? transactionUrl}) =
      _$SetSubscribePlanModelImpl;
  _SetSubscribePlanModel._() : super._();

  factory _SetSubscribePlanModel.fromJson(Map<String, dynamic> json) =
      _$SetSubscribePlanModelImpl.fromJson;

  @override
  @JsonKey(name: "starts_at")
  String? get startsAt;
  @override
  @JsonKey(name: "expires_at")
  String? get expiresAt;
  @override
  @JsonKey(name: "transaction_url")
  String? get transactionUrl;

  /// Create a copy of SetSubscribePlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSubscribePlanModelImplCopyWith<_$SetSubscribePlanModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
