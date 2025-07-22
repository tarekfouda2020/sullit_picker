// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodModel _$PaymentMethodModelFromJson(Map<String, dynamic> json) {
  return _PaymentMethodModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodModel {
  @JsonKey(name: "payment_type")
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type")
  set paymentType(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type_key")
  set paymentTypeKey(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "offline_payment_id")
  int get offLinePaymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "offline_payment_id")
  set offLinePaymentId(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_selected", defaultValue: false)
  bool? get isSelected => throw _privateConstructorUsedError;
  @JsonKey(name: "is_selected", defaultValue: false)
  set isSelected(bool? value) => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  set image(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  set details(String value) => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodModelCopyWith<PaymentMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodModelCopyWith<$Res> {
  factory $PaymentMethodModelCopyWith(
          PaymentMethodModel value, $Res Function(PaymentMethodModel) then) =
      _$PaymentMethodModelCopyWithImpl<$Res, PaymentMethodModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      @JsonKey(name: "offline_payment_id") int offLinePaymentId,
      @JsonKey(name: "is_selected", defaultValue: false) bool? isSelected,
      String image,
      String name,
      String title,
      String details});
}

/// @nodoc
class _$PaymentMethodModelCopyWithImpl<$Res, $Val extends PaymentMethodModel>
    implements $PaymentMethodModelCopyWith<$Res> {
  _$PaymentMethodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? paymentTypeKey = null,
    Object? offLinePaymentId = null,
    Object? isSelected = freezed,
    Object? image = null,
    Object? name = null,
    Object? title = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeKey: null == paymentTypeKey
          ? _value.paymentTypeKey
          : paymentTypeKey // ignore: cast_nullable_to_non_nullable
              as String,
      offLinePaymentId: null == offLinePaymentId
          ? _value.offLinePaymentId
          : offLinePaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodModelImplCopyWith<$Res>
    implements $PaymentMethodModelCopyWith<$Res> {
  factory _$$PaymentMethodModelImplCopyWith(_$PaymentMethodModelImpl value,
          $Res Function(_$PaymentMethodModelImpl) then) =
      __$$PaymentMethodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      @JsonKey(name: "offline_payment_id") int offLinePaymentId,
      @JsonKey(name: "is_selected", defaultValue: false) bool? isSelected,
      String image,
      String name,
      String title,
      String details});
}

/// @nodoc
class __$$PaymentMethodModelImplCopyWithImpl<$Res>
    extends _$PaymentMethodModelCopyWithImpl<$Res, _$PaymentMethodModelImpl>
    implements _$$PaymentMethodModelImplCopyWith<$Res> {
  __$$PaymentMethodModelImplCopyWithImpl(_$PaymentMethodModelImpl _value,
      $Res Function(_$PaymentMethodModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? paymentTypeKey = null,
    Object? offLinePaymentId = null,
    Object? isSelected = freezed,
    Object? image = null,
    Object? name = null,
    Object? title = null,
    Object? details = null,
  }) {
    return _then(_$PaymentMethodModelImpl(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeKey: null == paymentTypeKey
          ? _value.paymentTypeKey
          : paymentTypeKey // ignore: cast_nullable_to_non_nullable
              as String,
      offLinePaymentId: null == offLinePaymentId
          ? _value.offLinePaymentId
          : offLinePaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PaymentMethodModelImpl extends _PaymentMethodModel {
  _$PaymentMethodModelImpl(
      {@JsonKey(name: "payment_type") required this.paymentType,
      @JsonKey(name: "payment_type_key") required this.paymentTypeKey,
      @JsonKey(name: "offline_payment_id") required this.offLinePaymentId,
      @JsonKey(name: "is_selected", defaultValue: false) this.isSelected,
      required this.image,
      required this.name,
      required this.title,
      required this.details})
      : super._();

  factory _$PaymentMethodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodModelImplFromJson(json);

  @override
  @JsonKey(name: "payment_type")
  String paymentType;
  @override
  @JsonKey(name: "payment_type_key")
  String paymentTypeKey;
  @override
  @JsonKey(name: "offline_payment_id")
  int offLinePaymentId;
  @override
  @JsonKey(name: "is_selected", defaultValue: false)
  bool? isSelected;
  @override
  String image;
  @override
  String name;
  @override
  String title;
  @override
  String details;

  @override
  String toString() {
    return 'PaymentMethodModel(paymentType: $paymentType, paymentTypeKey: $paymentTypeKey, offLinePaymentId: $offLinePaymentId, isSelected: $isSelected, image: $image, name: $name, title: $title, details: $details)';
  }

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodModelImplCopyWith<_$PaymentMethodModelImpl> get copyWith =>
      __$$PaymentMethodModelImplCopyWithImpl<_$PaymentMethodModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodModel extends PaymentMethodModel {
  factory _PaymentMethodModel(
      {@JsonKey(name: "payment_type") required String paymentType,
      @JsonKey(name: "payment_type_key") required String paymentTypeKey,
      @JsonKey(name: "offline_payment_id") required int offLinePaymentId,
      @JsonKey(name: "is_selected", defaultValue: false) bool? isSelected,
      required String image,
      required String name,
      required String title,
      required String details}) = _$PaymentMethodModelImpl;
  _PaymentMethodModel._() : super._();

  factory _PaymentMethodModel.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodModelImpl.fromJson;

  @override
  @JsonKey(name: "payment_type")
  String get paymentType;
  @JsonKey(name: "payment_type")
  set paymentType(String value);
  @override
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey;
  @JsonKey(name: "payment_type_key")
  set paymentTypeKey(String value);
  @override
  @JsonKey(name: "offline_payment_id")
  int get offLinePaymentId;
  @JsonKey(name: "offline_payment_id")
  set offLinePaymentId(int value);
  @override
  @JsonKey(name: "is_selected", defaultValue: false)
  bool? get isSelected;
  @JsonKey(name: "is_selected", defaultValue: false)
  set isSelected(bool? value);
  @override
  String get image;
  set image(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get title;
  set title(String value);
  @override
  String get details;
  set details(String value);

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodModelImplCopyWith<_$PaymentMethodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
