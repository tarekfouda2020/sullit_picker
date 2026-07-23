// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_prescription_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcceptPrescriptionPreviewModel _$AcceptPrescriptionPreviewModelFromJson(
    Map<String, dynamic> json) {
  return _AcceptPrescriptionPreviewModel.fromJson(json);
}

/// @nodoc
mixin _$AcceptPrescriptionPreviewModel {
  String get total => throw _privateConstructorUsedError;
  String get subtotal => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_discounts')
  List<OrderDiscountModel> get discounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptPrescriptionPreviewModelCopyWith<AcceptPrescriptionPreviewModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptPrescriptionPreviewModelCopyWith<$Res> {
  factory $AcceptPrescriptionPreviewModelCopyWith(
          AcceptPrescriptionPreviewModel value,
          $Res Function(AcceptPrescriptionPreviewModel) then) =
      _$AcceptPrescriptionPreviewModelCopyWithImpl<$Res,
          AcceptPrescriptionPreviewModel>;
  @useResult
  $Res call(
      {String total,
      String subtotal,
      String tax,
      @JsonKey(name: 'order_discounts') List<OrderDiscountModel> discounts});
}

/// @nodoc
class _$AcceptPrescriptionPreviewModelCopyWithImpl<$Res,
        $Val extends AcceptPrescriptionPreviewModel>
    implements $AcceptPrescriptionPreviewModelCopyWith<$Res> {
  _$AcceptPrescriptionPreviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? subtotal = null,
    Object? tax = null,
    Object? discounts = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      discounts: null == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<OrderDiscountModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptPrescriptionPreviewModelImplCopyWith<$Res>
    implements $AcceptPrescriptionPreviewModelCopyWith<$Res> {
  factory _$$AcceptPrescriptionPreviewModelImplCopyWith(
          _$AcceptPrescriptionPreviewModelImpl value,
          $Res Function(_$AcceptPrescriptionPreviewModelImpl) then) =
      __$$AcceptPrescriptionPreviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      String subtotal,
      String tax,
      @JsonKey(name: 'order_discounts') List<OrderDiscountModel> discounts});
}

/// @nodoc
class __$$AcceptPrescriptionPreviewModelImplCopyWithImpl<$Res>
    extends _$AcceptPrescriptionPreviewModelCopyWithImpl<$Res,
        _$AcceptPrescriptionPreviewModelImpl>
    implements _$$AcceptPrescriptionPreviewModelImplCopyWith<$Res> {
  __$$AcceptPrescriptionPreviewModelImplCopyWithImpl(
      _$AcceptPrescriptionPreviewModelImpl _value,
      $Res Function(_$AcceptPrescriptionPreviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? subtotal = null,
    Object? tax = null,
    Object? discounts = null,
  }) {
    return _then(_$AcceptPrescriptionPreviewModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      discounts: null == discounts
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<OrderDiscountModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AcceptPrescriptionPreviewModelImpl
    extends _AcceptPrescriptionPreviewModel {
  _$AcceptPrescriptionPreviewModelImpl(
      {required this.total,
      required this.subtotal,
      required this.tax,
      @JsonKey(name: 'order_discounts')
      required final List<OrderDiscountModel> discounts})
      : _discounts = discounts,
        super._();

  factory _$AcceptPrescriptionPreviewModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AcceptPrescriptionPreviewModelImplFromJson(json);

  @override
  final String total;
  @override
  final String subtotal;
  @override
  final String tax;
  final List<OrderDiscountModel> _discounts;
  @override
  @JsonKey(name: 'order_discounts')
  List<OrderDiscountModel> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  String toString() {
    return 'AcceptPrescriptionPreviewModel(total: $total, subtotal: $subtotal, tax: $tax, discounts: $discounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptPrescriptionPreviewModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, subtotal, tax,
      const DeepCollectionEquality().hash(_discounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptPrescriptionPreviewModelImplCopyWith<
          _$AcceptPrescriptionPreviewModelImpl>
      get copyWith => __$$AcceptPrescriptionPreviewModelImplCopyWithImpl<
          _$AcceptPrescriptionPreviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptPrescriptionPreviewModelImplToJson(
      this,
    );
  }
}

abstract class _AcceptPrescriptionPreviewModel
    extends AcceptPrescriptionPreviewModel {
  factory _AcceptPrescriptionPreviewModel(
          {required final String total,
          required final String subtotal,
          required final String tax,
          @JsonKey(name: 'order_discounts')
          required final List<OrderDiscountModel> discounts}) =
      _$AcceptPrescriptionPreviewModelImpl;
  _AcceptPrescriptionPreviewModel._() : super._();

  factory _AcceptPrescriptionPreviewModel.fromJson(Map<String, dynamic> json) =
      _$AcceptPrescriptionPreviewModelImpl.fromJson;

  @override
  String get total;
  @override
  String get subtotal;
  @override
  String get tax;
  @override
  @JsonKey(name: 'order_discounts')
  List<OrderDiscountModel> get discounts;
  @override
  @JsonKey(ignore: true)
  _$$AcceptPrescriptionPreviewModelImplCopyWith<
          _$AcceptPrescriptionPreviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
