// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentSubscriptionModel _$CurrentSubscriptionModelFromJson(
    Map<String, dynamic> json) {
  return _CurrentSubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentSubscriptionModel {
  bool get subscribed => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_at")
  String get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: "days_remaining")
  int get daysRemaining => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;

  /// Serializes this CurrentSubscriptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentSubscriptionModelCopyWith<CurrentSubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentSubscriptionModelCopyWith<$Res> {
  factory $CurrentSubscriptionModelCopyWith(CurrentSubscriptionModel value,
          $Res Function(CurrentSubscriptionModel) then) =
      _$CurrentSubscriptionModelCopyWithImpl<$Res, CurrentSubscriptionModel>;
  @useResult
  $Res call(
      {bool subscribed,
      @JsonKey(name: "expires_at") String expiresAt,
      @JsonKey(name: "days_remaining") int daysRemaining,
      String? title,
      String price,
      String? description,
      String duration});
}

/// @nodoc
class _$CurrentSubscriptionModelCopyWithImpl<$Res,
        $Val extends CurrentSubscriptionModel>
    implements $CurrentSubscriptionModelCopyWith<$Res> {
  _$CurrentSubscriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = null,
    Object? expiresAt = null,
    Object? daysRemaining = null,
    Object? title = freezed,
    Object? price = null,
    Object? description = freezed,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      subscribed: null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      daysRemaining: null == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentSubscriptionModelImplCopyWith<$Res>
    implements $CurrentSubscriptionModelCopyWith<$Res> {
  factory _$$CurrentSubscriptionModelImplCopyWith(
          _$CurrentSubscriptionModelImpl value,
          $Res Function(_$CurrentSubscriptionModelImpl) then) =
      __$$CurrentSubscriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool subscribed,
      @JsonKey(name: "expires_at") String expiresAt,
      @JsonKey(name: "days_remaining") int daysRemaining,
      String? title,
      String price,
      String? description,
      String duration});
}

/// @nodoc
class __$$CurrentSubscriptionModelImplCopyWithImpl<$Res>
    extends _$CurrentSubscriptionModelCopyWithImpl<$Res,
        _$CurrentSubscriptionModelImpl>
    implements _$$CurrentSubscriptionModelImplCopyWith<$Res> {
  __$$CurrentSubscriptionModelImplCopyWithImpl(
      _$CurrentSubscriptionModelImpl _value,
      $Res Function(_$CurrentSubscriptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = null,
    Object? expiresAt = null,
    Object? daysRemaining = null,
    Object? title = freezed,
    Object? price = null,
    Object? description = freezed,
    Object? duration = null,
  }) {
    return _then(_$CurrentSubscriptionModelImpl(
      subscribed: null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      daysRemaining: null == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CurrentSubscriptionModelImpl extends _CurrentSubscriptionModel {
  _$CurrentSubscriptionModelImpl(
      {required this.subscribed,
      @JsonKey(name: "expires_at") required this.expiresAt,
      @JsonKey(name: "days_remaining") required this.daysRemaining,
      required this.title,
      required this.price,
      required this.description,
      required this.duration})
      : super._();

  factory _$CurrentSubscriptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentSubscriptionModelImplFromJson(json);

  @override
  final bool subscribed;
  @override
  @JsonKey(name: "expires_at")
  final String expiresAt;
  @override
  @JsonKey(name: "days_remaining")
  final int daysRemaining;
  @override
  final String? title;
  @override
  final String price;
  @override
  final String? description;
  @override
  final String duration;

  @override
  String toString() {
    return 'CurrentSubscriptionModel(subscribed: $subscribed, expiresAt: $expiresAt, daysRemaining: $daysRemaining, title: $title, price: $price, description: $description, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentSubscriptionModelImpl &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subscribed, expiresAt,
      daysRemaining, title, price, description, duration);

  /// Create a copy of CurrentSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentSubscriptionModelImplCopyWith<_$CurrentSubscriptionModelImpl>
      get copyWith => __$$CurrentSubscriptionModelImplCopyWithImpl<
          _$CurrentSubscriptionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentSubscriptionModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentSubscriptionModel extends CurrentSubscriptionModel {
  factory _CurrentSubscriptionModel(
      {required final bool subscribed,
      @JsonKey(name: "expires_at") required final String expiresAt,
      @JsonKey(name: "days_remaining") required final int daysRemaining,
      required final String? title,
      required final String price,
      required final String? description,
      required final String duration}) = _$CurrentSubscriptionModelImpl;
  _CurrentSubscriptionModel._() : super._();

  factory _CurrentSubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$CurrentSubscriptionModelImpl.fromJson;

  @override
  bool get subscribed;
  @override
  @JsonKey(name: "expires_at")
  String get expiresAt;
  @override
  @JsonKey(name: "days_remaining")
  int get daysRemaining;
  @override
  String? get title;
  @override
  String get price;
  @override
  String? get description;
  @override
  String get duration;

  /// Create a copy of CurrentSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentSubscriptionModelImplCopyWith<_$CurrentSubscriptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
