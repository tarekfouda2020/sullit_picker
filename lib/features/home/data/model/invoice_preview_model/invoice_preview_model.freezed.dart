// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoicePreviewModel _$InvoicePreviewModelFromJson(Map<String, dynamic> json) {
  return _InvoicePreviewModel.fromJson(json);
}

/// @nodoc
mixin _$InvoicePreviewModel {
  String get total => throw _privateConstructorUsedError;
  String get subtotal => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_discount")
  String get couponDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_discounts")
  List<OrderDiscountModel> get discounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoicePreviewModelCopyWith<InvoicePreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicePreviewModelCopyWith<$Res> {
  factory $InvoicePreviewModelCopyWith(
          InvoicePreviewModel value, $Res Function(InvoicePreviewModel) then) =
      _$InvoicePreviewModelCopyWithImpl<$Res, InvoicePreviewModel>;
  @useResult
  $Res call(
      {String total,
      String subtotal,
      String tax,
      @JsonKey(name: "coupon_discount") String couponDiscount,
      @JsonKey(name: "order_discounts") List<OrderDiscountModel> discounts});
}

/// @nodoc
class _$InvoicePreviewModelCopyWithImpl<$Res, $Val extends InvoicePreviewModel>
    implements $InvoicePreviewModelCopyWith<$Res> {
  _$InvoicePreviewModelCopyWithImpl(this._value, this._then);

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
    Object? couponDiscount = null,
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
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      discounts: null == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<OrderDiscountModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoicePreviewModelImplCopyWith<$Res>
    implements $InvoicePreviewModelCopyWith<$Res> {
  factory _$$InvoicePreviewModelImplCopyWith(_$InvoicePreviewModelImpl value,
          $Res Function(_$InvoicePreviewModelImpl) then) =
      __$$InvoicePreviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      String subtotal,
      String tax,
      @JsonKey(name: "coupon_discount") String couponDiscount,
      @JsonKey(name: "order_discounts") List<OrderDiscountModel> discounts});
}

/// @nodoc
class __$$InvoicePreviewModelImplCopyWithImpl<$Res>
    extends _$InvoicePreviewModelCopyWithImpl<$Res, _$InvoicePreviewModelImpl>
    implements _$$InvoicePreviewModelImplCopyWith<$Res> {
  __$$InvoicePreviewModelImplCopyWithImpl(_$InvoicePreviewModelImpl _value,
      $Res Function(_$InvoicePreviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? subtotal = null,
    Object? tax = null,
    Object? couponDiscount = null,
    Object? discounts = null,
  }) {
    return _then(_$InvoicePreviewModelImpl(
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
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
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
class _$InvoicePreviewModelImpl extends _InvoicePreviewModel {
  _$InvoicePreviewModelImpl(
      {required this.total,
      required this.subtotal,
      required this.tax,
      @JsonKey(name: "coupon_discount") required this.couponDiscount,
      @JsonKey(name: "order_discounts")
      required final List<OrderDiscountModel> discounts})
      : _discounts = discounts,
        super._();

  factory _$InvoicePreviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoicePreviewModelImplFromJson(json);

  @override
  final String total;
  @override
  final String subtotal;
  @override
  final String tax;
  @override
  @JsonKey(name: "coupon_discount")
  final String couponDiscount;
  final List<OrderDiscountModel> _discounts;
  @override
  @JsonKey(name: "order_discounts")
  List<OrderDiscountModel> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  String toString() {
    return 'InvoicePreviewModel(total: $total, subtotal: $subtotal, tax: $tax, couponDiscount: $couponDiscount, discounts: $discounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicePreviewModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, subtotal, tax,
      couponDiscount, const DeepCollectionEquality().hash(_discounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoicePreviewModelImplCopyWith<_$InvoicePreviewModelImpl> get copyWith =>
      __$$InvoicePreviewModelImplCopyWithImpl<_$InvoicePreviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoicePreviewModelImplToJson(
      this,
    );
  }
}

abstract class _InvoicePreviewModel extends InvoicePreviewModel {
  factory _InvoicePreviewModel(
      {required final String total,
      required final String subtotal,
      required final String tax,
      @JsonKey(name: "coupon_discount") required final String couponDiscount,
      @JsonKey(name: "order_discounts")
      required final List<OrderDiscountModel>
          discounts}) = _$InvoicePreviewModelImpl;
  _InvoicePreviewModel._() : super._();

  factory _InvoicePreviewModel.fromJson(Map<String, dynamic> json) =
      _$InvoicePreviewModelImpl.fromJson;

  @override
  String get total;
  @override
  String get subtotal;
  @override
  String get tax;
  @override
  @JsonKey(name: "coupon_discount")
  String get couponDiscount;
  @override
  @JsonKey(name: "order_discounts")
  List<OrderDiscountModel> get discounts;
  @override
  @JsonKey(ignore: true)
  _$$InvoicePreviewModelImplCopyWith<_$InvoicePreviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
