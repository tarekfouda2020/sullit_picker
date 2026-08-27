// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_shared_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get variation => throw _privateConstructorUsedError;
  set variation(String value) => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  set quantity(int value) => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  set price(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  set unitPrice(String value) => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  set product(ProductModel? value) => throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? get newVariantId => throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  set newVariantId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  int? get addedVariantId => throw _privateConstructorUsedError;
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  set addedVariantId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? get newPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "new_price", defaultValue: 0.0)
  set newPrice(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "picker_notes", defaultValue: "")
  String? get pickerNotes => throw _privateConstructorUsedError;
  @JsonKey(name: "picker_notes", defaultValue: "")
  set pickerNotes(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
  double? get fixedUnitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
  set fixedUnitPrice(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_qnt', defaultValue: 0)
  int? get fixedQnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_qnt', defaultValue: 0)
  set fixedQnt(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_replaced_model')
  OldReplacedModel? get oldReplacedModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_replaced_model')
  set oldReplacedModel(OldReplacedModel? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
  String? get insuranceCoveragePercentageApi =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
  set insuranceCoveragePercentageApi(String? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'instructions', defaultValue: null)
  String? get instructionsApi => throw _privateConstructorUsedError;
  @JsonKey(name: 'instructions', defaultValue: null)
  set instructionsApi(String? value) => throw _privateConstructorUsedError;

  /// prescription order local fields
  @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
  double? get insuranceCoveragePercentage => throw _privateConstructorUsedError;

  /// prescription order local fields
  @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
  set insuranceCoveragePercentage(double? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'instructions_local', defaultValue: null)
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'instructions_local', defaultValue: null)
  set instructions(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_stock', defaultValue: null)
  int? get currentStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_stock', defaultValue: null)
  set currentStock(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String variation,
      int quantity,
      String price,
      @JsonKey(name: "unit_price") String unitPrice,
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "") String? pickerNotes,
      @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
      double? fixedUnitPrice,
      @JsonKey(name: 'fixed_qnt', defaultValue: 0) int? fixedQnt,
      @JsonKey(name: 'old_replaced_model') OldReplacedModel? oldReplacedModel,
      @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
      String? insuranceCoveragePercentageApi,
      @JsonKey(name: 'instructions', defaultValue: null)
      String? instructionsApi,
      @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
      double? insuranceCoveragePercentage,
      @JsonKey(name: 'instructions_local', defaultValue: null)
      String? instructions,
      @JsonKey(name: 'current_stock', defaultValue: null) int? currentStock});

  $ProductModelCopyWith<$Res>? get product;
  $OldReplacedModelCopyWith<$Res>? get oldReplacedModel;
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? price = null,
    Object? unitPrice = null,
    Object? product = freezed,
    Object? newVariantId = freezed,
    Object? addedVariantId = freezed,
    Object? newPrice = freezed,
    Object? pickerNotes = freezed,
    Object? fixedUnitPrice = freezed,
    Object? fixedQnt = freezed,
    Object? oldReplacedModel = freezed,
    Object? insuranceCoveragePercentageApi = freezed,
    Object? instructionsApi = freezed,
    Object? insuranceCoveragePercentage = freezed,
    Object? instructions = freezed,
    Object? currentStock = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newVariantId: freezed == newVariantId
          ? _value.newVariantId
          : newVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      addedVariantId: freezed == addedVariantId
          ? _value.addedVariantId
          : addedVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      fixedUnitPrice: freezed == fixedUnitPrice
          ? _value.fixedUnitPrice
          : fixedUnitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fixedQnt: freezed == fixedQnt
          ? _value.fixedQnt
          : fixedQnt // ignore: cast_nullable_to_non_nullable
              as int?,
      oldReplacedModel: freezed == oldReplacedModel
          ? _value.oldReplacedModel
          : oldReplacedModel // ignore: cast_nullable_to_non_nullable
              as OldReplacedModel?,
      insuranceCoveragePercentageApi: freezed == insuranceCoveragePercentageApi
          ? _value.insuranceCoveragePercentageApi
          : insuranceCoveragePercentageApi // ignore: cast_nullable_to_non_nullable
              as String?,
      instructionsApi: freezed == instructionsApi
          ? _value.instructionsApi
          : instructionsApi // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceCoveragePercentage: freezed == insuranceCoveragePercentage
          ? _value.insuranceCoveragePercentage
          : insuranceCoveragePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OldReplacedModelCopyWith<$Res>? get oldReplacedModel {
    if (_value.oldReplacedModel == null) {
      return null;
    }

    return $OldReplacedModelCopyWith<$Res>(_value.oldReplacedModel!, (value) {
      return _then(_value.copyWith(oldReplacedModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String variation,
      int quantity,
      String price,
      @JsonKey(name: "unit_price") String unitPrice,
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "") String? pickerNotes,
      @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
      double? fixedUnitPrice,
      @JsonKey(name: 'fixed_qnt', defaultValue: 0) int? fixedQnt,
      @JsonKey(name: 'old_replaced_model') OldReplacedModel? oldReplacedModel,
      @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
      String? insuranceCoveragePercentageApi,
      @JsonKey(name: 'instructions', defaultValue: null)
      String? instructionsApi,
      @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
      double? insuranceCoveragePercentage,
      @JsonKey(name: 'instructions_local', defaultValue: null)
      String? instructions,
      @JsonKey(name: 'current_stock', defaultValue: null) int? currentStock});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $OldReplacedModelCopyWith<$Res>? get oldReplacedModel;
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? price = null,
    Object? unitPrice = null,
    Object? product = freezed,
    Object? newVariantId = freezed,
    Object? addedVariantId = freezed,
    Object? newPrice = freezed,
    Object? pickerNotes = freezed,
    Object? fixedUnitPrice = freezed,
    Object? fixedQnt = freezed,
    Object? oldReplacedModel = freezed,
    Object? insuranceCoveragePercentageApi = freezed,
    Object? instructionsApi = freezed,
    Object? insuranceCoveragePercentage = freezed,
    Object? instructions = freezed,
    Object? currentStock = freezed,
  }) {
    return _then(_$OrderDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newVariantId: freezed == newVariantId
          ? _value.newVariantId
          : newVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      addedVariantId: freezed == addedVariantId
          ? _value.addedVariantId
          : addedVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      fixedUnitPrice: freezed == fixedUnitPrice
          ? _value.fixedUnitPrice
          : fixedUnitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fixedQnt: freezed == fixedQnt
          ? _value.fixedQnt
          : fixedQnt // ignore: cast_nullable_to_non_nullable
              as int?,
      oldReplacedModel: freezed == oldReplacedModel
          ? _value.oldReplacedModel
          : oldReplacedModel // ignore: cast_nullable_to_non_nullable
              as OldReplacedModel?,
      insuranceCoveragePercentageApi: freezed == insuranceCoveragePercentageApi
          ? _value.insuranceCoveragePercentageApi
          : insuranceCoveragePercentageApi // ignore: cast_nullable_to_non_nullable
              as String?,
      instructionsApi: freezed == instructionsApi
          ? _value.instructionsApi
          : instructionsApi // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceCoveragePercentage: freezed == insuranceCoveragePercentage
          ? _value.insuranceCoveragePercentage
          : insuranceCoveragePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl extends _OrderDetailsModel {
  _$OrderDetailsModelImpl(
      {required this.id,
      required this.variation,
      required this.quantity,
      required this.price,
      @JsonKey(name: "unit_price") required this.unitPrice,
      this.product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) this.newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) this.addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) this.newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "") this.pickerNotes,
      @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0) this.fixedUnitPrice,
      @JsonKey(name: 'fixed_qnt', defaultValue: 0) this.fixedQnt,
      @JsonKey(name: 'old_replaced_model') this.oldReplacedModel,
      @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
      this.insuranceCoveragePercentageApi,
      @JsonKey(name: 'instructions', defaultValue: null) this.instructionsApi,
      @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
      this.insuranceCoveragePercentage,
      @JsonKey(name: 'instructions_local', defaultValue: null)
      this.instructions,
      @JsonKey(name: 'current_stock', defaultValue: null) this.currentStock})
      : super._();

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  int id;
  @override
  String variation;
  @override
  int quantity;
  @override
  String price;
  @override
  @JsonKey(name: "unit_price")
  String unitPrice;
  @override
  ProductModel? product;

  /// used in local data
  @override
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? newVariantId;
  @override
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  int? addedVariantId;
  @override
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? newPrice;
  @override
  @JsonKey(name: "picker_notes", defaultValue: "")
  String? pickerNotes;
  @override
  @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
  double? fixedUnitPrice;
  @override
  @JsonKey(name: 'fixed_qnt', defaultValue: 0)
  int? fixedQnt;
  @override
  @JsonKey(name: 'old_replaced_model')
  OldReplacedModel? oldReplacedModel;
  @override
  @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
  String? insuranceCoveragePercentageApi;
  @override
  @JsonKey(name: 'instructions', defaultValue: null)
  String? instructionsApi;

  /// prescription order local fields
  @override
  @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
  double? insuranceCoveragePercentage;
  @override
  @JsonKey(name: 'instructions_local', defaultValue: null)
  String? instructions;
  @override
  @JsonKey(name: 'current_stock', defaultValue: null)
  int? currentStock;

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, variation: $variation, quantity: $quantity, price: $price, unitPrice: $unitPrice, product: $product, newVariantId: $newVariantId, addedVariantId: $addedVariantId, newPrice: $newPrice, pickerNotes: $pickerNotes, fixedUnitPrice: $fixedUnitPrice, fixedQnt: $fixedQnt, oldReplacedModel: $oldReplacedModel, insuranceCoveragePercentageApi: $insuranceCoveragePercentageApi, instructionsApi: $instructionsApi, insuranceCoveragePercentage: $insuranceCoveragePercentage, instructions: $instructions, currentStock: $currentStock)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel extends OrderDetailsModel {
  factory _OrderDetailsModel(
      {required int id,
      required String variation,
      required int quantity,
      required String price,
      @JsonKey(name: "unit_price") required String unitPrice,
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "") String? pickerNotes,
      @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
      double? fixedUnitPrice,
      @JsonKey(name: 'fixed_qnt', defaultValue: 0) int? fixedQnt,
      @JsonKey(name: 'old_replaced_model') OldReplacedModel? oldReplacedModel,
      @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
      String? insuranceCoveragePercentageApi,
      @JsonKey(name: 'instructions', defaultValue: null)
      String? instructionsApi,
      @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
      double? insuranceCoveragePercentage,
      @JsonKey(name: 'instructions_local', defaultValue: null)
      String? instructions,
      @JsonKey(name: 'current_stock', defaultValue: null)
      int? currentStock}) = _$OrderDetailsModelImpl;
  _OrderDetailsModel._() : super._();

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get variation;
  set variation(String value);
  @override
  int get quantity;
  set quantity(int value);
  @override
  String get price;
  set price(String value);
  @override
  @JsonKey(name: "unit_price")
  String get unitPrice;
  @JsonKey(name: "unit_price")
  set unitPrice(String value);
  @override
  ProductModel? get product;
  set product(ProductModel? value);
  @override

  /// used in local data
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? get newVariantId;

  /// used in local data
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  set newVariantId(int? value);
  @override
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  int? get addedVariantId;
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  set addedVariantId(int? value);
  @override
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? get newPrice;
  @JsonKey(name: "new_price", defaultValue: 0.0)
  set newPrice(double? value);
  @override
  @JsonKey(name: "picker_notes", defaultValue: "")
  String? get pickerNotes;
  @JsonKey(name: "picker_notes", defaultValue: "")
  set pickerNotes(String? value);
  @override
  @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
  double? get fixedUnitPrice;
  @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0)
  set fixedUnitPrice(double? value);
  @override
  @JsonKey(name: 'fixed_qnt', defaultValue: 0)
  int? get fixedQnt;
  @JsonKey(name: 'fixed_qnt', defaultValue: 0)
  set fixedQnt(int? value);
  @override
  @JsonKey(name: 'old_replaced_model')
  OldReplacedModel? get oldReplacedModel;
  @JsonKey(name: 'old_replaced_model')
  set oldReplacedModel(OldReplacedModel? value);
  @override
  @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
  String? get insuranceCoveragePercentageApi;
  @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null)
  set insuranceCoveragePercentageApi(String? value);
  @override
  @JsonKey(name: 'instructions', defaultValue: null)
  String? get instructionsApi;
  @JsonKey(name: 'instructions', defaultValue: null)
  set instructionsApi(String? value);
  @override

  /// prescription order local fields
  @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
  double? get insuranceCoveragePercentage;

  /// prescription order local fields
  @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null)
  set insuranceCoveragePercentage(double? value);
  @override
  @JsonKey(name: 'instructions_local', defaultValue: null)
  String? get instructions;
  @JsonKey(name: 'instructions_local', defaultValue: null)
  set instructions(String? value);
  @override
  @JsonKey(name: 'current_stock', defaultValue: null)
  int? get currentStock;
  @JsonKey(name: 'current_stock', defaultValue: null)
  set currentStock(int? value);
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  set barcode(String value) => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  set unit(String value) => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  set category(CategoryModel? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  set thumbnailImage(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  bool get isFresh => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  set isFresh(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_id')
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_id')
  set variantId(int? value) => throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get productPickedPercent => throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set productPickedPercent(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  int? get pickedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  set pickedQuantity(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  ProductStatusEnum? get productStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  set productStatus(ProductStatusEnum? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  bool? get showEditPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  set showEditPrice(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      String unit,
      CategoryModel? category,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'variant_id') int? variantId,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      bool? showEditPrice});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? barcode = null,
    Object? unit = null,
    Object? category = freezed,
    Object? thumbnailImage = null,
    Object? isFresh = null,
    Object? variantId = freezed,
    Object? productPickedPercent = freezed,
    Object? pickedQuantity = freezed,
    Object? productStatus = freezed,
    Object? showEditPrice = freezed,
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
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      productPickedPercent: freezed == productPickedPercent
          ? _value.productPickedPercent
          : productPickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      pickedQuantity: freezed == pickedQuantity
          ? _value.pickedQuantity
          : pickedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatusEnum?,
      showEditPrice: freezed == showEditPrice
          ? _value.showEditPrice
          : showEditPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      String unit,
      CategoryModel? category,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'variant_id') int? variantId,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      bool? showEditPrice});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? barcode = null,
    Object? unit = null,
    Object? category = freezed,
    Object? thumbnailImage = null,
    Object? isFresh = null,
    Object? variantId = freezed,
    Object? productPickedPercent = freezed,
    Object? pickedQuantity = freezed,
    Object? productStatus = freezed,
    Object? showEditPrice = freezed,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      productPickedPercent: freezed == productPickedPercent
          ? _value.productPickedPercent
          : productPickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      pickedQuantity: freezed == pickedQuantity
          ? _value.pickedQuantity
          : pickedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatusEnum?,
      showEditPrice: freezed == showEditPrice
          ? _value.showEditPrice
          : showEditPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl extends _ProductModel {
  _$ProductModelImpl(
      {required this.id,
      required this.name,
      required this.barcode,
      required this.unit,
      this.category,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      @JsonKey(name: 'is_fresh') required this.isFresh,
      @JsonKey(name: 'variant_id') this.variantId,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      this.productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) this.pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      this.productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      this.showEditPrice})
      : super._();

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  int id;
  @override
  String name;
  @override
  String barcode;
  @override
  String unit;
  @override
  CategoryModel? category;
  @override
  @JsonKey(name: 'thumbnail_image')
  String thumbnailImage;
  @override
  @JsonKey(name: 'is_fresh')
  bool isFresh;
  @override
  @JsonKey(name: 'variant_id')
  int? variantId;

  /// used in local data
  @override
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? productPickedPercent;
  @override
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  int? pickedQuantity;
  @override
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  ProductStatusEnum? productStatus;
  @override
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  bool? showEditPrice;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, barcode: $barcode, unit: $unit, category: $category, thumbnailImage: $thumbnailImage, isFresh: $isFresh, variantId: $variantId, productPickedPercent: $productPickedPercent, pickedQuantity: $pickedQuantity, productStatus: $productStatus, showEditPrice: $showEditPrice)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  factory _ProductModel(
      {required int id,
      required String name,
      required String barcode,
      required String unit,
      CategoryModel? category,
      @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
      @JsonKey(name: 'is_fresh') required bool isFresh,
      @JsonKey(name: 'variant_id') int? variantId,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      bool? showEditPrice}) = _$ProductModelImpl;
  _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get name;
  set name(String value);
  @override
  String get barcode;
  set barcode(String value);
  @override
  String get unit;
  set unit(String value);
  @override
  CategoryModel? get category;
  set category(CategoryModel? value);
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @JsonKey(name: 'thumbnail_image')
  set thumbnailImage(String value);
  @override
  @JsonKey(name: 'is_fresh')
  bool get isFresh;
  @JsonKey(name: 'is_fresh')
  set isFresh(bool value);
  @override
  @JsonKey(name: 'variant_id')
  int? get variantId;
  @JsonKey(name: 'variant_id')
  set variantId(int? value);
  @override

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get productPickedPercent;

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set productPickedPercent(double? value);
  @override
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  int? get pickedQuantity;
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  set pickedQuantity(int? value);
  @override
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  ProductStatusEnum? get productStatus;
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  set productStatus(ProductStatusEnum? value);
  @override
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  bool? get showEditPrice;
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  set showEditPrice(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl({required this.id, required this.name});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {required final int id,
      required final String name}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_type")
  String get customerType => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_type_label")
  String get customerTypeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "shareholder_number")
  String? get shareHolderNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res, CustomerModel>;
  @useResult
  $Res call(
      {String name,
      String email,
      String phone,
      @JsonKey(name: "customer_type") String customerType,
      @JsonKey(name: "customer_type_label") String customerTypeLabel,
      @JsonKey(name: "shareholder_number") String? shareHolderNumber});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res, $Val extends CustomerModel>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? customerType = null,
    Object? customerTypeLabel = null,
    Object? shareHolderNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeLabel: null == customerTypeLabel
          ? _value.customerTypeLabel
          : customerTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      shareHolderNumber: freezed == shareHolderNumber
          ? _value.shareHolderNumber
          : shareHolderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerModelImplCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$CustomerModelImplCopyWith(
          _$CustomerModelImpl value, $Res Function(_$CustomerModelImpl) then) =
      __$$CustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String phone,
      @JsonKey(name: "customer_type") String customerType,
      @JsonKey(name: "customer_type_label") String customerTypeLabel,
      @JsonKey(name: "shareholder_number") String? shareHolderNumber});
}

/// @nodoc
class __$$CustomerModelImplCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res, _$CustomerModelImpl>
    implements _$$CustomerModelImplCopyWith<$Res> {
  __$$CustomerModelImplCopyWithImpl(
      _$CustomerModelImpl _value, $Res Function(_$CustomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? customerType = null,
    Object? customerTypeLabel = null,
    Object? shareHolderNumber = freezed,
  }) {
    return _then(_$CustomerModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeLabel: null == customerTypeLabel
          ? _value.customerTypeLabel
          : customerTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      shareHolderNumber: freezed == shareHolderNumber
          ? _value.shareHolderNumber
          : shareHolderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerModelImpl extends _CustomerModel {
  _$CustomerModelImpl(
      {required this.name,
      required this.email,
      required this.phone,
      @JsonKey(name: "customer_type") required this.customerType,
      @JsonKey(name: "customer_type_label") required this.customerTypeLabel,
      @JsonKey(name: "shareholder_number") required this.shareHolderNumber})
      : super._();

  factory _$CustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerModelImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  @JsonKey(name: "customer_type")
  final String customerType;
  @override
  @JsonKey(name: "customer_type_label")
  final String customerTypeLabel;
  @override
  @JsonKey(name: "shareholder_number")
  final String? shareHolderNumber;

  @override
  String toString() {
    return 'CustomerModel(name: $name, email: $email, phone: $phone, customerType: $customerType, customerTypeLabel: $customerTypeLabel, shareHolderNumber: $shareHolderNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.customerTypeLabel, customerTypeLabel) ||
                other.customerTypeLabel == customerTypeLabel) &&
            (identical(other.shareHolderNumber, shareHolderNumber) ||
                other.shareHolderNumber == shareHolderNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone, customerType,
      customerTypeLabel, shareHolderNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      __$$CustomerModelImplCopyWithImpl<_$CustomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerModel extends CustomerModel {
  factory _CustomerModel(
      {required final String name,
      required final String email,
      required final String phone,
      @JsonKey(name: "customer_type") required final String customerType,
      @JsonKey(name: "customer_type_label")
      required final String customerTypeLabel,
      @JsonKey(name: "shareholder_number")
      required final String? shareHolderNumber}) = _$CustomerModelImpl;
  _CustomerModel._() : super._();

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$CustomerModelImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(name: "customer_type")
  String get customerType;
  @override
  @JsonKey(name: "customer_type_label")
  String get customerTypeLabel;
  @override
  @JsonKey(name: "shareholder_number")
  String? get shareHolderNumber;
  @override
  @JsonKey(ignore: true)
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) {
  return _DriverModel.fromJson(json);
}

/// @nodoc
mixin _$DriverModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_rate")
  num get rate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverModelCopyWith<DriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverModelCopyWith<$Res> {
  factory $DriverModelCopyWith(
          DriverModel value, $Res Function(DriverModel) then) =
      _$DriverModelCopyWithImpl<$Res, DriverModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "avg_rate") num rate,
      String name,
      String avatar,
      String email,
      String phone});
}

/// @nodoc
class _$DriverModelCopyWithImpl<$Res, $Val extends DriverModel>
    implements $DriverModelCopyWith<$Res> {
  _$DriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? name = null,
    Object? avatar = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverModelImplCopyWith<$Res>
    implements $DriverModelCopyWith<$Res> {
  factory _$$DriverModelImplCopyWith(
          _$DriverModelImpl value, $Res Function(_$DriverModelImpl) then) =
      __$$DriverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "avg_rate") num rate,
      String name,
      String avatar,
      String email,
      String phone});
}

/// @nodoc
class __$$DriverModelImplCopyWithImpl<$Res>
    extends _$DriverModelCopyWithImpl<$Res, _$DriverModelImpl>
    implements _$$DriverModelImplCopyWith<$Res> {
  __$$DriverModelImplCopyWithImpl(
      _$DriverModelImpl _value, $Res Function(_$DriverModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? name = null,
    Object? avatar = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$DriverModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverModelImpl extends _DriverModel {
  _$DriverModelImpl(
      {required this.id,
      @JsonKey(name: "avg_rate") required this.rate,
      required this.name,
      required this.avatar,
      required this.email,
      required this.phone})
      : super._();

  factory _$DriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "avg_rate")
  final num rate;
  @override
  final String name;
  @override
  final String avatar;
  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'DriverModel(id: $id, rate: $rate, name: $name, avatar: $avatar, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rate, name, avatar, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      __$$DriverModelImplCopyWithImpl<_$DriverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverModelImplToJson(
      this,
    );
  }
}

abstract class _DriverModel extends DriverModel {
  factory _DriverModel(
      {required final int id,
      @JsonKey(name: "avg_rate") required final num rate,
      required final String name,
      required final String avatar,
      required final String email,
      required final String phone}) = _$DriverModelImpl;
  _DriverModel._() : super._();

  factory _DriverModel.fromJson(Map<String, dynamic> json) =
      _$DriverModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "avg_rate")
  num get rate;
  @override
  String get name;
  @override
  String get avatar;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDiscountModel _$OrderDiscountModelFromJson(Map<String, dynamic> json) {
  return _OrderDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDiscountModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String get typeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_description')
  String get typeDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String get discountType => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_value')
  String get discountValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDiscountModelCopyWith<OrderDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDiscountModelCopyWith<$Res> {
  factory $OrderDiscountModelCopyWith(
          OrderDiscountModel value, $Res Function(OrderDiscountModel) then) =
      _$OrderDiscountModelCopyWithImpl<$Res, OrderDiscountModel>;
  @useResult
  $Res call(
      {int id,
      String type,
      @JsonKey(name: 'type_label') String typeLabel,
      @JsonKey(name: 'type_description') String typeDescription,
      @JsonKey(name: 'discount_type') String discountType,
      String discount,
      @JsonKey(name: 'discount_value') String discountValue});
}

/// @nodoc
class _$OrderDiscountModelCopyWithImpl<$Res, $Val extends OrderDiscountModel>
    implements $OrderDiscountModelCopyWith<$Res> {
  _$OrderDiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? typeDescription = null,
    Object? discountType = null,
    Object? discount = null,
    Object? discountValue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDiscountModelImplCopyWith<$Res>
    implements $OrderDiscountModelCopyWith<$Res> {
  factory _$$OrderDiscountModelImplCopyWith(_$OrderDiscountModelImpl value,
          $Res Function(_$OrderDiscountModelImpl) then) =
      __$$OrderDiscountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      @JsonKey(name: 'type_label') String typeLabel,
      @JsonKey(name: 'type_description') String typeDescription,
      @JsonKey(name: 'discount_type') String discountType,
      String discount,
      @JsonKey(name: 'discount_value') String discountValue});
}

/// @nodoc
class __$$OrderDiscountModelImplCopyWithImpl<$Res>
    extends _$OrderDiscountModelCopyWithImpl<$Res, _$OrderDiscountModelImpl>
    implements _$$OrderDiscountModelImplCopyWith<$Res> {
  __$$OrderDiscountModelImplCopyWithImpl(_$OrderDiscountModelImpl _value,
      $Res Function(_$OrderDiscountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? typeDescription = null,
    Object? discountType = null,
    Object? discount = null,
    Object? discountValue = null,
  }) {
    return _then(_$OrderDiscountModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDiscountModelImpl extends _OrderDiscountModel {
  _$OrderDiscountModelImpl(
      {required this.id,
      required this.type,
      @JsonKey(name: 'type_label') required this.typeLabel,
      @JsonKey(name: 'type_description') required this.typeDescription,
      @JsonKey(name: 'discount_type') required this.discountType,
      required this.discount,
      @JsonKey(name: 'discount_value') required this.discountValue})
      : super._();

  factory _$OrderDiscountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDiscountModelImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  @JsonKey(name: 'type_label')
  final String typeLabel;
  @override
  @JsonKey(name: 'type_description')
  final String typeDescription;
  @override
  @JsonKey(name: 'discount_type')
  final String discountType;
  @override
  final String discount;
  @override
  @JsonKey(name: 'discount_value')
  final String discountValue;

  @override
  String toString() {
    return 'OrderDiscountModel(id: $id, type: $type, typeLabel: $typeLabel, typeDescription: $typeDescription, discountType: $discountType, discount: $discount, discountValue: $discountValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDiscountModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, typeLabel,
      typeDescription, discountType, discount, discountValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDiscountModelImplCopyWith<_$OrderDiscountModelImpl> get copyWith =>
      __$$OrderDiscountModelImplCopyWithImpl<_$OrderDiscountModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDiscountModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDiscountModel extends OrderDiscountModel {
  factory _OrderDiscountModel(
      {required final int id,
      required final String type,
      @JsonKey(name: 'type_label') required final String typeLabel,
      @JsonKey(name: 'type_description') required final String typeDescription,
      @JsonKey(name: 'discount_type') required final String discountType,
      required final String discount,
      @JsonKey(name: 'discount_value')
      required final String discountValue}) = _$OrderDiscountModelImpl;
  _OrderDiscountModel._() : super._();

  factory _OrderDiscountModel.fromJson(Map<String, dynamic> json) =
      _$OrderDiscountModelImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  @JsonKey(name: 'type_label')
  String get typeLabel;
  @override
  @JsonKey(name: 'type_description')
  String get typeDescription;
  @override
  @JsonKey(name: 'discount_type')
  String get discountType;
  @override
  String get discount;
  @override
  @JsonKey(name: 'discount_value')
  String get discountValue;
  @override
  @JsonKey(ignore: true)
  _$$OrderDiscountModelImplCopyWith<_$OrderDiscountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModifiedProductModel _$ModifiedProductModelFromJson(Map<String, dynamic> json) {
  return _ModifiedProductModel.fromJson(json);
}

/// @nodoc
mixin _$ModifiedProductModel {
  int get id => throw _privateConstructorUsedError;

  /// reduce | add | remove | replace
  String get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_label')
  String get actionLabel => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  String? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_price')
  String? get newPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_quantity')
  int? get oldQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_quantity')
  int? get newQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_product')
  ProductModel? get oldProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_product')
  ProductModel? get newProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_variation', defaultValue: '')
  String? get oldVariation => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_variation', defaultValue: '')
  String? get newVariation => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifiedProductModelCopyWith<ModifiedProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifiedProductModelCopyWith<$Res> {
  factory $ModifiedProductModelCopyWith(ModifiedProductModel value,
          $Res Function(ModifiedProductModel) then) =
      _$ModifiedProductModelCopyWithImpl<$Res, ModifiedProductModel>;
  @useResult
  $Res call(
      {int id,
      String action,
      @JsonKey(name: 'action_label') String actionLabel,
      @JsonKey(defaultValue: '') String? notes,
      @JsonKey(name: 'old_price') String? oldPrice,
      @JsonKey(name: 'new_price') String? newPrice,
      @JsonKey(name: 'old_quantity') int? oldQuantity,
      @JsonKey(name: 'new_quantity') int? newQuantity,
      @JsonKey(name: 'old_product') ProductModel? oldProduct,
      @JsonKey(name: 'new_product') ProductModel? newProduct,
      @JsonKey(name: 'old_variation', defaultValue: '') String? oldVariation,
      @JsonKey(name: 'new_variation', defaultValue: '') String? newVariation,
      @JsonKey(name: 'created_at') String createdAt});

  $ProductModelCopyWith<$Res>? get oldProduct;
  $ProductModelCopyWith<$Res>? get newProduct;
}

/// @nodoc
class _$ModifiedProductModelCopyWithImpl<$Res,
        $Val extends ModifiedProductModel>
    implements $ModifiedProductModelCopyWith<$Res> {
  _$ModifiedProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? actionLabel = null,
    Object? notes = freezed,
    Object? oldPrice = freezed,
    Object? newPrice = freezed,
    Object? oldQuantity = freezed,
    Object? newQuantity = freezed,
    Object? oldProduct = freezed,
    Object? newProduct = freezed,
    Object? oldVariation = freezed,
    Object? newVariation = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      actionLabel: null == actionLabel
          ? _value.actionLabel
          : actionLabel // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      oldQuantity: freezed == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      newQuantity: freezed == newQuantity
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      oldProduct: freezed == oldProduct
          ? _value.oldProduct
          : oldProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newProduct: freezed == newProduct
          ? _value.newProduct
          : newProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      oldVariation: freezed == oldVariation
          ? _value.oldVariation
          : oldVariation // ignore: cast_nullable_to_non_nullable
              as String?,
      newVariation: freezed == newVariation
          ? _value.newVariation
          : newVariation // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get oldProduct {
    if (_value.oldProduct == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.oldProduct!, (value) {
      return _then(_value.copyWith(oldProduct: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get newProduct {
    if (_value.newProduct == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.newProduct!, (value) {
      return _then(_value.copyWith(newProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModifiedProductModelImplCopyWith<$Res>
    implements $ModifiedProductModelCopyWith<$Res> {
  factory _$$ModifiedProductModelImplCopyWith(_$ModifiedProductModelImpl value,
          $Res Function(_$ModifiedProductModelImpl) then) =
      __$$ModifiedProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String action,
      @JsonKey(name: 'action_label') String actionLabel,
      @JsonKey(defaultValue: '') String? notes,
      @JsonKey(name: 'old_price') String? oldPrice,
      @JsonKey(name: 'new_price') String? newPrice,
      @JsonKey(name: 'old_quantity') int? oldQuantity,
      @JsonKey(name: 'new_quantity') int? newQuantity,
      @JsonKey(name: 'old_product') ProductModel? oldProduct,
      @JsonKey(name: 'new_product') ProductModel? newProduct,
      @JsonKey(name: 'old_variation', defaultValue: '') String? oldVariation,
      @JsonKey(name: 'new_variation', defaultValue: '') String? newVariation,
      @JsonKey(name: 'created_at') String createdAt});

  @override
  $ProductModelCopyWith<$Res>? get oldProduct;
  @override
  $ProductModelCopyWith<$Res>? get newProduct;
}

/// @nodoc
class __$$ModifiedProductModelImplCopyWithImpl<$Res>
    extends _$ModifiedProductModelCopyWithImpl<$Res, _$ModifiedProductModelImpl>
    implements _$$ModifiedProductModelImplCopyWith<$Res> {
  __$$ModifiedProductModelImplCopyWithImpl(_$ModifiedProductModelImpl _value,
      $Res Function(_$ModifiedProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? actionLabel = null,
    Object? notes = freezed,
    Object? oldPrice = freezed,
    Object? newPrice = freezed,
    Object? oldQuantity = freezed,
    Object? newQuantity = freezed,
    Object? oldProduct = freezed,
    Object? newProduct = freezed,
    Object? oldVariation = freezed,
    Object? newVariation = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ModifiedProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      actionLabel: null == actionLabel
          ? _value.actionLabel
          : actionLabel // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      oldQuantity: freezed == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      newQuantity: freezed == newQuantity
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      oldProduct: freezed == oldProduct
          ? _value.oldProduct
          : oldProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newProduct: freezed == newProduct
          ? _value.newProduct
          : newProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      oldVariation: freezed == oldVariation
          ? _value.oldVariation
          : oldVariation // ignore: cast_nullable_to_non_nullable
              as String?,
      newVariation: freezed == newVariation
          ? _value.newVariation
          : newVariation // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModifiedProductModelImpl implements _ModifiedProductModel {
  const _$ModifiedProductModelImpl(
      {required this.id,
      required this.action,
      @JsonKey(name: 'action_label') required this.actionLabel,
      @JsonKey(defaultValue: '') this.notes,
      @JsonKey(name: 'old_price') this.oldPrice,
      @JsonKey(name: 'new_price') this.newPrice,
      @JsonKey(name: 'old_quantity') this.oldQuantity,
      @JsonKey(name: 'new_quantity') this.newQuantity,
      @JsonKey(name: 'old_product') this.oldProduct,
      @JsonKey(name: 'new_product') this.newProduct,
      @JsonKey(name: 'old_variation', defaultValue: '') this.oldVariation,
      @JsonKey(name: 'new_variation', defaultValue: '') this.newVariation,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$ModifiedProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModifiedProductModelImplFromJson(json);

  @override
  final int id;

  /// reduce | add | remove | replace
  @override
  final String action;
  @override
  @JsonKey(name: 'action_label')
  final String actionLabel;
  @override
  @JsonKey(defaultValue: '')
  final String? notes;
  @override
  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @override
  @JsonKey(name: 'new_price')
  final String? newPrice;
  @override
  @JsonKey(name: 'old_quantity')
  final int? oldQuantity;
  @override
  @JsonKey(name: 'new_quantity')
  final int? newQuantity;
  @override
  @JsonKey(name: 'old_product')
  final ProductModel? oldProduct;
  @override
  @JsonKey(name: 'new_product')
  final ProductModel? newProduct;
  @override
  @JsonKey(name: 'old_variation', defaultValue: '')
  final String? oldVariation;
  @override
  @JsonKey(name: 'new_variation', defaultValue: '')
  final String? newVariation;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'ModifiedProductModel(id: $id, action: $action, actionLabel: $actionLabel, notes: $notes, oldPrice: $oldPrice, newPrice: $newPrice, oldQuantity: $oldQuantity, newQuantity: $newQuantity, oldProduct: $oldProduct, newProduct: $newProduct, oldVariation: $oldVariation, newVariation: $newVariation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifiedProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.actionLabel, actionLabel) ||
                other.actionLabel == actionLabel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.newPrice, newPrice) ||
                other.newPrice == newPrice) &&
            (identical(other.oldQuantity, oldQuantity) ||
                other.oldQuantity == oldQuantity) &&
            (identical(other.newQuantity, newQuantity) ||
                other.newQuantity == newQuantity) &&
            (identical(other.oldProduct, oldProduct) ||
                other.oldProduct == oldProduct) &&
            (identical(other.newProduct, newProduct) ||
                other.newProduct == newProduct) &&
            (identical(other.oldVariation, oldVariation) ||
                other.oldVariation == oldVariation) &&
            (identical(other.newVariation, newVariation) ||
                other.newVariation == newVariation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      action,
      actionLabel,
      notes,
      oldPrice,
      newPrice,
      oldQuantity,
      newQuantity,
      oldProduct,
      newProduct,
      oldVariation,
      newVariation,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifiedProductModelImplCopyWith<_$ModifiedProductModelImpl>
      get copyWith =>
          __$$ModifiedProductModelImplCopyWithImpl<_$ModifiedProductModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModifiedProductModelImplToJson(
      this,
    );
  }
}

abstract class _ModifiedProductModel implements ModifiedProductModel {
  const factory _ModifiedProductModel(
          {required final int id,
          required final String action,
          @JsonKey(name: 'action_label') required final String actionLabel,
          @JsonKey(defaultValue: '') final String? notes,
          @JsonKey(name: 'old_price') final String? oldPrice,
          @JsonKey(name: 'new_price') final String? newPrice,
          @JsonKey(name: 'old_quantity') final int? oldQuantity,
          @JsonKey(name: 'new_quantity') final int? newQuantity,
          @JsonKey(name: 'old_product') final ProductModel? oldProduct,
          @JsonKey(name: 'new_product') final ProductModel? newProduct,
          @JsonKey(name: 'old_variation', defaultValue: '')
          final String? oldVariation,
          @JsonKey(name: 'new_variation', defaultValue: '')
          final String? newVariation,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$ModifiedProductModelImpl;

  factory _ModifiedProductModel.fromJson(Map<String, dynamic> json) =
      _$ModifiedProductModelImpl.fromJson;

  @override
  int get id;
  @override

  /// reduce | add | remove | replace
  String get action;
  @override
  @JsonKey(name: 'action_label')
  String get actionLabel;
  @override
  @JsonKey(defaultValue: '')
  String? get notes;
  @override
  @JsonKey(name: 'old_price')
  String? get oldPrice;
  @override
  @JsonKey(name: 'new_price')
  String? get newPrice;
  @override
  @JsonKey(name: 'old_quantity')
  int? get oldQuantity;
  @override
  @JsonKey(name: 'new_quantity')
  int? get newQuantity;
  @override
  @JsonKey(name: 'old_product')
  ProductModel? get oldProduct;
  @override
  @JsonKey(name: 'new_product')
  ProductModel? get newProduct;
  @override
  @JsonKey(name: 'old_variation', defaultValue: '')
  String? get oldVariation;
  @override
  @JsonKey(name: 'new_variation', defaultValue: '')
  String? get newVariation;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ModifiedProductModelImplCopyWith<_$ModifiedProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderDisplayItem _$OrderDisplayItemFromJson(Map<String, dynamic> json) {
  return _OrderDisplayItem.fromJson(json);
}

/// @nodoc
mixin _$OrderDisplayItem {
  OrderDetailsModel? get current => throw _privateConstructorUsedError;
  ModifiedProductModel? get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDisplayItemCopyWith<OrderDisplayItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDisplayItemCopyWith<$Res> {
  factory $OrderDisplayItemCopyWith(
          OrderDisplayItem value, $Res Function(OrderDisplayItem) then) =
      _$OrderDisplayItemCopyWithImpl<$Res, OrderDisplayItem>;
  @useResult
  $Res call({OrderDetailsModel? current, ModifiedProductModel? history});

  $OrderDetailsModelCopyWith<$Res>? get current;
  $ModifiedProductModelCopyWith<$Res>? get history;
}

/// @nodoc
class _$OrderDisplayItemCopyWithImpl<$Res, $Val extends OrderDisplayItem>
    implements $OrderDisplayItemCopyWith<$Res> {
  _$OrderDisplayItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as ModifiedProductModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsModelCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $OrderDetailsModelCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ModifiedProductModelCopyWith<$Res>? get history {
    if (_value.history == null) {
      return null;
    }

    return $ModifiedProductModelCopyWith<$Res>(_value.history!, (value) {
      return _then(_value.copyWith(history: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDisplayItemImplCopyWith<$Res>
    implements $OrderDisplayItemCopyWith<$Res> {
  factory _$$OrderDisplayItemImplCopyWith(_$OrderDisplayItemImpl value,
          $Res Function(_$OrderDisplayItemImpl) then) =
      __$$OrderDisplayItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderDetailsModel? current, ModifiedProductModel? history});

  @override
  $OrderDetailsModelCopyWith<$Res>? get current;
  @override
  $ModifiedProductModelCopyWith<$Res>? get history;
}

/// @nodoc
class __$$OrderDisplayItemImplCopyWithImpl<$Res>
    extends _$OrderDisplayItemCopyWithImpl<$Res, _$OrderDisplayItemImpl>
    implements _$$OrderDisplayItemImplCopyWith<$Res> {
  __$$OrderDisplayItemImplCopyWithImpl(_$OrderDisplayItemImpl _value,
      $Res Function(_$OrderDisplayItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? history = freezed,
  }) {
    return _then(_$OrderDisplayItemImpl(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as ModifiedProductModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDisplayItemImpl extends _OrderDisplayItem {
  const _$OrderDisplayItemImpl({this.current, this.history}) : super._();

  factory _$OrderDisplayItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDisplayItemImplFromJson(json);

  @override
  final OrderDetailsModel? current;
  @override
  final ModifiedProductModel? history;

  @override
  String toString() {
    return 'OrderDisplayItem(current: $current, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDisplayItemImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.history, history) || other.history == history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, history);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDisplayItemImplCopyWith<_$OrderDisplayItemImpl> get copyWith =>
      __$$OrderDisplayItemImplCopyWithImpl<_$OrderDisplayItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDisplayItemImplToJson(
      this,
    );
  }
}

abstract class _OrderDisplayItem extends OrderDisplayItem {
  const factory _OrderDisplayItem(
      {final OrderDetailsModel? current,
      final ModifiedProductModel? history}) = _$OrderDisplayItemImpl;
  const _OrderDisplayItem._() : super._();

  factory _OrderDisplayItem.fromJson(Map<String, dynamic> json) =
      _$OrderDisplayItemImpl.fromJson;

  @override
  OrderDetailsModel? get current;
  @override
  ModifiedProductModel? get history;
  @override
  @JsonKey(ignore: true)
  _$$OrderDisplayItemImplCopyWith<_$OrderDisplayItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OldReplacedModel _$OldReplacedModelFromJson(Map<String, dynamic> json) {
  return _OldReplacedModel.fromJson(json);
}

/// @nodoc
mixin _$OldReplacedModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get unitPrice => throw _privateConstructorUsedError;
  int get qnt => throw _privateConstructorUsedError;
  String get replaceReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OldReplacedModelCopyWith<OldReplacedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OldReplacedModelCopyWith<$Res> {
  factory $OldReplacedModelCopyWith(
          OldReplacedModel value, $Res Function(OldReplacedModel) then) =
      _$OldReplacedModelCopyWithImpl<$Res, OldReplacedModel>;
  @useResult
  $Res call(
      {int id,
      String image,
      String name,
      String unitPrice,
      int qnt,
      String replaceReason});
}

/// @nodoc
class _$OldReplacedModelCopyWithImpl<$Res, $Val extends OldReplacedModel>
    implements $OldReplacedModelCopyWith<$Res> {
  _$OldReplacedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? unitPrice = null,
    Object? qnt = null,
    Object? replaceReason = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      qnt: null == qnt
          ? _value.qnt
          : qnt // ignore: cast_nullable_to_non_nullable
              as int,
      replaceReason: null == replaceReason
          ? _value.replaceReason
          : replaceReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OldReplacedModelImplCopyWith<$Res>
    implements $OldReplacedModelCopyWith<$Res> {
  factory _$$OldReplacedModelImplCopyWith(_$OldReplacedModelImpl value,
          $Res Function(_$OldReplacedModelImpl) then) =
      __$$OldReplacedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      String name,
      String unitPrice,
      int qnt,
      String replaceReason});
}

/// @nodoc
class __$$OldReplacedModelImplCopyWithImpl<$Res>
    extends _$OldReplacedModelCopyWithImpl<$Res, _$OldReplacedModelImpl>
    implements _$$OldReplacedModelImplCopyWith<$Res> {
  __$$OldReplacedModelImplCopyWithImpl(_$OldReplacedModelImpl _value,
      $Res Function(_$OldReplacedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? unitPrice = null,
    Object? qnt = null,
    Object? replaceReason = null,
  }) {
    return _then(_$OldReplacedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      qnt: null == qnt
          ? _value.qnt
          : qnt // ignore: cast_nullable_to_non_nullable
              as int,
      replaceReason: null == replaceReason
          ? _value.replaceReason
          : replaceReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OldReplacedModelImpl implements _OldReplacedModel {
  const _$OldReplacedModelImpl(
      {required this.id,
      required this.image,
      required this.name,
      required this.unitPrice,
      required this.qnt,
      required this.replaceReason});

  factory _$OldReplacedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OldReplacedModelImplFromJson(json);

  @override
  final int id;
  @override
  final String image;
  @override
  final String name;
  @override
  final String unitPrice;
  @override
  final int qnt;
  @override
  final String replaceReason;

  @override
  String toString() {
    return 'OldReplacedModel(id: $id, image: $image, name: $name, unitPrice: $unitPrice, qnt: $qnt, replaceReason: $replaceReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OldReplacedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.qnt, qnt) || other.qnt == qnt) &&
            (identical(other.replaceReason, replaceReason) ||
                other.replaceReason == replaceReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, name, unitPrice, qnt, replaceReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OldReplacedModelImplCopyWith<_$OldReplacedModelImpl> get copyWith =>
      __$$OldReplacedModelImplCopyWithImpl<_$OldReplacedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OldReplacedModelImplToJson(
      this,
    );
  }
}

abstract class _OldReplacedModel implements OldReplacedModel {
  const factory _OldReplacedModel(
      {required final int id,
      required final String image,
      required final String name,
      required final String unitPrice,
      required final int qnt,
      required final String replaceReason}) = _$OldReplacedModelImpl;

  factory _OldReplacedModel.fromJson(Map<String, dynamic> json) =
      _$OldReplacedModelImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  String get name;
  @override
  String get unitPrice;
  @override
  int get qnt;
  @override
  String get replaceReason;
  @override
  @JsonKey(ignore: true)
  _$$OldReplacedModelImplCopyWith<_$OldReplacedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
