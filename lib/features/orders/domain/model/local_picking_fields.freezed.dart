// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_picking_fields.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalPickingFields _$LocalPickingFieldsFromJson(Map<String, dynamic> json) {
  return _LocalPickingFields.fromJson(json);
}

/// @nodoc
mixin _$LocalPickingFields {
  @JsonKey(name: 'display_items')
  List<OrderDisplayItem>? get displayItems =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'display_items')
  set displayItems(List<OrderDisplayItem>? value) =>
      throw _privateConstructorUsedError;

  /// deleted_orders hold the removed items
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get deletedOrders =>
      throw _privateConstructorUsedError;

  /// deleted_orders hold the removed items
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  set deletedOrders(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;

  /// changed_products hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get changedProducts =>
      throw _privateConstructorUsedError;

  /// changed_products hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  set changedProducts(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get qntChangedProducts =>
      throw _privateConstructorUsedError;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
  set qntChangedProducts(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get pickedPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set pickedPercent(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? get preparationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  set preparationSeconds(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalPickingFieldsCopyWith<LocalPickingFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalPickingFieldsCopyWith<$Res> {
  factory $LocalPickingFieldsCopyWith(
          LocalPickingFields value, $Res Function(LocalPickingFields) then) =
      _$LocalPickingFieldsCopyWithImpl<$Res, LocalPickingFields>;
  @useResult
  $Res call(
      {@JsonKey(name: 'display_items') List<OrderDisplayItem>? displayItems,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? changedProducts,
      @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds});
}

/// @nodoc
class _$LocalPickingFieldsCopyWithImpl<$Res, $Val extends LocalPickingFields>
    implements $LocalPickingFieldsCopyWith<$Res> {
  _$LocalPickingFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayItems = freezed,
    Object? deletedOrders = freezed,
    Object? changedProducts = freezed,
    Object? qntChangedProducts = freezed,
    Object? pickedPercent = freezed,
    Object? preparationSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      displayItems: freezed == displayItems
          ? _value.displayItems
          : displayItems // ignore: cast_nullable_to_non_nullable
              as List<OrderDisplayItem>?,
      deletedOrders: freezed == deletedOrders
          ? _value.deletedOrders
          : deletedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      changedProducts: freezed == changedProducts
          ? _value.changedProducts
          : changedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      qntChangedProducts: freezed == qntChangedProducts
          ? _value.qntChangedProducts
          : qntChangedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      pickedPercent: freezed == pickedPercent
          ? _value.pickedPercent
          : pickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      preparationSeconds: freezed == preparationSeconds
          ? _value.preparationSeconds
          : preparationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalPickingFieldsImplCopyWith<$Res>
    implements $LocalPickingFieldsCopyWith<$Res> {
  factory _$$LocalPickingFieldsImplCopyWith(_$LocalPickingFieldsImpl value,
          $Res Function(_$LocalPickingFieldsImpl) then) =
      __$$LocalPickingFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'display_items') List<OrderDisplayItem>? displayItems,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? changedProducts,
      @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds});
}

/// @nodoc
class __$$LocalPickingFieldsImplCopyWithImpl<$Res>
    extends _$LocalPickingFieldsCopyWithImpl<$Res, _$LocalPickingFieldsImpl>
    implements _$$LocalPickingFieldsImplCopyWith<$Res> {
  __$$LocalPickingFieldsImplCopyWithImpl(_$LocalPickingFieldsImpl _value,
      $Res Function(_$LocalPickingFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayItems = freezed,
    Object? deletedOrders = freezed,
    Object? changedProducts = freezed,
    Object? qntChangedProducts = freezed,
    Object? pickedPercent = freezed,
    Object? preparationSeconds = freezed,
  }) {
    return _then(_$LocalPickingFieldsImpl(
      displayItems: freezed == displayItems
          ? _value.displayItems
          : displayItems // ignore: cast_nullable_to_non_nullable
              as List<OrderDisplayItem>?,
      deletedOrders: freezed == deletedOrders
          ? _value.deletedOrders
          : deletedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      changedProducts: freezed == changedProducts
          ? _value.changedProducts
          : changedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      qntChangedProducts: freezed == qntChangedProducts
          ? _value.qntChangedProducts
          : qntChangedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      pickedPercent: freezed == pickedPercent
          ? _value.pickedPercent
          : pickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      preparationSeconds: freezed == preparationSeconds
          ? _value.preparationSeconds
          : preparationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalPickingFieldsImpl extends _LocalPickingFields {
  _$LocalPickingFieldsImpl(
      {@JsonKey(name: 'display_items') this.displayItems,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      this.deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      this.changedProducts,
      @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
      this.qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) this.pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      this.preparationSeconds})
      : super._();

  factory _$LocalPickingFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalPickingFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'display_items')
  List<OrderDisplayItem>? displayItems;

  /// deleted_orders hold the removed items
  @override
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? deletedOrders;

  /// changed_products hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @override
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? changedProducts;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @override
  @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? qntChangedProducts;
  @override
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? pickedPercent;
  @override
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? preparationSeconds;

  @override
  String toString() {
    return 'LocalPickingFields(displayItems: $displayItems, deletedOrders: $deletedOrders, changedProducts: $changedProducts, qntChangedProducts: $qntChangedProducts, pickedPercent: $pickedPercent, preparationSeconds: $preparationSeconds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalPickingFieldsImplCopyWith<_$LocalPickingFieldsImpl> get copyWith =>
      __$$LocalPickingFieldsImplCopyWithImpl<_$LocalPickingFieldsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalPickingFieldsImplToJson(
      this,
    );
  }
}

abstract class _LocalPickingFields extends LocalPickingFields {
  factory _LocalPickingFields(
      {@JsonKey(name: 'display_items') List<OrderDisplayItem>? displayItems,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? changedProducts,
      @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds}) = _$LocalPickingFieldsImpl;
  _LocalPickingFields._() : super._();

  factory _LocalPickingFields.fromJson(Map<String, dynamic> json) =
      _$LocalPickingFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'display_items')
  List<OrderDisplayItem>? get displayItems;
  @JsonKey(name: 'display_items')
  set displayItems(List<OrderDisplayItem>? value);
  @override

  /// deleted_orders hold the removed items
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get deletedOrders;

  /// deleted_orders hold the removed items
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  set deletedOrders(List<OrderDetailsModel>? value);
  @override

  /// changed_products hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get changedProducts;

  /// changed_products hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  set changedProducts(List<OrderDetailsModel>? value);
  @override

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get qntChangedProducts;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
  set qntChangedProducts(List<OrderDetailsModel>? value);
  @override
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get pickedPercent;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set pickedPercent(double? value);
  @override
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? get preparationSeconds;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  set preparationSeconds(int? value);
  @override
  @JsonKey(ignore: true)
  _$$LocalPickingFieldsImplCopyWith<_$LocalPickingFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
