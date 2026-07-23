// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_barcode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchBarcodeModel _$SearchBarcodeModelFromJson(Map<String, dynamic> json) {
  return _SearchBarcodeModel.fromJson(json);
}

/// @nodoc
mixin _$SearchBarcodeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low_discount')
  String get priceHighLowDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low')
  String get priceHighLow => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol => throw _privateConstructorUsedError;
  VariantModel get variant => throw _privateConstructorUsedError;
  List<VariantModel>? get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchBarcodeModelCopyWith<SearchBarcodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBarcodeModelCopyWith<$Res> {
  factory $SearchBarcodeModelCopyWith(
          SearchBarcodeModel value, $Res Function(SearchBarcodeModel) then) =
      _$SearchBarcodeModelCopyWithImpl<$Res, SearchBarcodeModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String discount,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      VariantModel variant,
      List<VariantModel>? variants});

  $VariantModelCopyWith<$Res> get variant;
}

/// @nodoc
class _$SearchBarcodeModelCopyWithImpl<$Res, $Val extends SearchBarcodeModel>
    implements $SearchBarcodeModelCopyWith<$Res> {
  _$SearchBarcodeModelCopyWithImpl(this._value, this._then);

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
    Object? thumbnailImage = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? currencySymbol = null,
    Object? variant = null,
    Object? variants = freezed,
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
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLowDiscount: null == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLow: null == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariantModelCopyWith<$Res> get variant {
    return $VariantModelCopyWith<$Res>(_value.variant, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchBarcodeModelImplCopyWith<$Res>
    implements $SearchBarcodeModelCopyWith<$Res> {
  factory _$$SearchBarcodeModelImplCopyWith(_$SearchBarcodeModelImpl value,
          $Res Function(_$SearchBarcodeModelImpl) then) =
      __$$SearchBarcodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String discount,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      VariantModel variant,
      List<VariantModel>? variants});

  @override
  $VariantModelCopyWith<$Res> get variant;
}

/// @nodoc
class __$$SearchBarcodeModelImplCopyWithImpl<$Res>
    extends _$SearchBarcodeModelCopyWithImpl<$Res, _$SearchBarcodeModelImpl>
    implements _$$SearchBarcodeModelImplCopyWith<$Res> {
  __$$SearchBarcodeModelImplCopyWithImpl(_$SearchBarcodeModelImpl _value,
      $Res Function(_$SearchBarcodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? barcode = null,
    Object? thumbnailImage = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? currencySymbol = null,
    Object? variant = null,
    Object? variants = freezed,
  }) {
    return _then(_$SearchBarcodeModelImpl(
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
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLowDiscount: null == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLow: null == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchBarcodeModelImpl implements _SearchBarcodeModel {
  const _$SearchBarcodeModelImpl(
      {required this.id,
      required this.name,
      required this.barcode,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      @JsonKey(name: 'price_high_low_discount')
      required this.priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required this.priceHighLow,
      @JsonKey(name: 'has_discount') required this.hasDiscount,
      required this.discount,
      @JsonKey(name: 'currency_symbol') required this.currencySymbol,
      required this.variant,
      final List<VariantModel>? variants})
      : _variants = variants;

  factory _$SearchBarcodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchBarcodeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String barcode;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String thumbnailImage;
  @override
  @JsonKey(name: 'price_high_low_discount')
  final String priceHighLowDiscount;
  @override
  @JsonKey(name: 'price_high_low')
  final String priceHighLow;
  @override
  @JsonKey(name: 'has_discount')
  final bool hasDiscount;
  @override
  final String discount;
  @override
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;
  @override
  final VariantModel variant;
  final List<VariantModel>? _variants;
  @override
  List<VariantModel>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchBarcodeModel(id: $id, name: $name, barcode: $barcode, thumbnailImage: $thumbnailImage, priceHighLowDiscount: $priceHighLowDiscount, priceHighLow: $priceHighLow, hasDiscount: $hasDiscount, discount: $discount, currencySymbol: $currencySymbol, variant: $variant, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarcodeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.priceHighLowDiscount, priceHighLowDiscount) ||
                other.priceHighLowDiscount == priceHighLowDiscount) &&
            (identical(other.priceHighLow, priceHighLow) ||
                other.priceHighLow == priceHighLow) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      barcode,
      thumbnailImage,
      priceHighLowDiscount,
      priceHighLow,
      hasDiscount,
      discount,
      currencySymbol,
      variant,
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarcodeModelImplCopyWith<_$SearchBarcodeModelImpl> get copyWith =>
      __$$SearchBarcodeModelImplCopyWithImpl<_$SearchBarcodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchBarcodeModelImplToJson(
      this,
    );
  }
}

abstract class _SearchBarcodeModel implements SearchBarcodeModel {
  const factory _SearchBarcodeModel(
      {required final int id,
      required final String name,
      required final String barcode,
      @JsonKey(name: 'thumbnail_image') required final String thumbnailImage,
      @JsonKey(name: 'price_high_low_discount')
      required final String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required final String priceHighLow,
      @JsonKey(name: 'has_discount') required final bool hasDiscount,
      required final String discount,
      @JsonKey(name: 'currency_symbol') required final String currencySymbol,
      required final VariantModel variant,
      final List<VariantModel>? variants}) = _$SearchBarcodeModelImpl;

  factory _SearchBarcodeModel.fromJson(Map<String, dynamic> json) =
      _$SearchBarcodeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get barcode;
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @override
  @JsonKey(name: 'price_high_low_discount')
  String get priceHighLowDiscount;
  @override
  @JsonKey(name: 'price_high_low')
  String get priceHighLow;
  @override
  @JsonKey(name: 'has_discount')
  bool get hasDiscount;
  @override
  String get discount;
  @override
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol;
  @override
  VariantModel get variant;
  @override
  List<VariantModel>? get variants;
  @override
  @JsonKey(ignore: true)
  _$$SearchBarcodeModelImplCopyWith<_$SearchBarcodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'stroked_price')
  String get strokedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculable_price')
  String get calculablePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_price')
  String get mainPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_price')
  String get originalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_stock')
  int? get currentStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get options => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_selected', defaultValue: false)
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantModelCopyWith<VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantModelCopyWith<$Res> {
  factory $VariantModelCopyWith(
          VariantModel value, $Res Function(VariantModel) then) =
      _$VariantModelCopyWithImpl<$Res, VariantModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String sku,
      @JsonKey(name: 'stroked_price') String strokedPrice,
      @JsonKey(name: 'calculable_price') String calculablePrice,
      @JsonKey(name: 'main_price') String mainPrice,
      @JsonKey(name: 'original_price') String originalPrice,
      @JsonKey(name: 'current_stock') int? currentStock,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String image,
      String options,
      @JsonKey(name: 'is_selected', defaultValue: false) bool? isSelected});
}

/// @nodoc
class _$VariantModelCopyWithImpl<$Res, $Val extends VariantModel>
    implements $VariantModelCopyWith<$Res> {
  _$VariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? strokedPrice = null,
    Object? calculablePrice = null,
    Object? mainPrice = null,
    Object? originalPrice = null,
    Object? currentStock = freezed,
    Object? currencySymbol = null,
    Object? hasDiscount = null,
    Object? image = null,
    Object? options = null,
    Object? isSelected = freezed,
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
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      strokedPrice: null == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      calculablePrice: null == calculablePrice
          ? _value.calculablePrice
          : calculablePrice // ignore: cast_nullable_to_non_nullable
              as String,
      mainPrice: null == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantModelImplCopyWith<$Res>
    implements $VariantModelCopyWith<$Res> {
  factory _$$VariantModelImplCopyWith(
          _$VariantModelImpl value, $Res Function(_$VariantModelImpl) then) =
      __$$VariantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String sku,
      @JsonKey(name: 'stroked_price') String strokedPrice,
      @JsonKey(name: 'calculable_price') String calculablePrice,
      @JsonKey(name: 'main_price') String mainPrice,
      @JsonKey(name: 'original_price') String originalPrice,
      @JsonKey(name: 'current_stock') int? currentStock,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String image,
      String options,
      @JsonKey(name: 'is_selected', defaultValue: false) bool? isSelected});
}

/// @nodoc
class __$$VariantModelImplCopyWithImpl<$Res>
    extends _$VariantModelCopyWithImpl<$Res, _$VariantModelImpl>
    implements _$$VariantModelImplCopyWith<$Res> {
  __$$VariantModelImplCopyWithImpl(
      _$VariantModelImpl _value, $Res Function(_$VariantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? strokedPrice = null,
    Object? calculablePrice = null,
    Object? mainPrice = null,
    Object? originalPrice = null,
    Object? currentStock = freezed,
    Object? currencySymbol = null,
    Object? hasDiscount = null,
    Object? image = null,
    Object? options = null,
    Object? isSelected = freezed,
  }) {
    return _then(_$VariantModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      strokedPrice: null == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      calculablePrice: null == calculablePrice
          ? _value.calculablePrice
          : calculablePrice // ignore: cast_nullable_to_non_nullable
              as String,
      mainPrice: null == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantModelImpl implements _VariantModel {
  const _$VariantModelImpl(
      {required this.id,
      required this.name,
      required this.sku,
      @JsonKey(name: 'stroked_price') required this.strokedPrice,
      @JsonKey(name: 'calculable_price') required this.calculablePrice,
      @JsonKey(name: 'main_price') required this.mainPrice,
      @JsonKey(name: 'original_price') required this.originalPrice,
      @JsonKey(name: 'current_stock') this.currentStock = null,
      @JsonKey(name: 'currency_symbol') required this.currencySymbol,
      @JsonKey(name: 'has_discount') required this.hasDiscount,
      required this.image,
      required this.options,
      @JsonKey(name: 'is_selected', defaultValue: false)
      this.isSelected = false});

  factory _$VariantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String sku;
  @override
  @JsonKey(name: 'stroked_price')
  final String strokedPrice;
  @override
  @JsonKey(name: 'calculable_price')
  final String calculablePrice;
  @override
  @JsonKey(name: 'main_price')
  final String mainPrice;
  @override
  @JsonKey(name: 'original_price')
  final String originalPrice;
  @override
  @JsonKey(name: 'current_stock')
  final int? currentStock;
  @override
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;
  @override
  @JsonKey(name: 'has_discount')
  final bool hasDiscount;
  @override
  final String image;
  @override
  final String options;
  @override
  @JsonKey(name: 'is_selected', defaultValue: false)
  final bool? isSelected;

  @override
  String toString() {
    return 'VariantModel(id: $id, name: $name, sku: $sku, strokedPrice: $strokedPrice, calculablePrice: $calculablePrice, mainPrice: $mainPrice, originalPrice: $originalPrice, currentStock: $currentStock, currencySymbol: $currencySymbol, hasDiscount: $hasDiscount, image: $image, options: $options, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.strokedPrice, strokedPrice) ||
                other.strokedPrice == strokedPrice) &&
            (identical(other.calculablePrice, calculablePrice) ||
                other.calculablePrice == calculablePrice) &&
            (identical(other.mainPrice, mainPrice) ||
                other.mainPrice == mainPrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      sku,
      strokedPrice,
      calculablePrice,
      mainPrice,
      originalPrice,
      currentStock,
      currencySymbol,
      hasDiscount,
      image,
      options,
      isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantModelImplCopyWith<_$VariantModelImpl> get copyWith =>
      __$$VariantModelImplCopyWithImpl<_$VariantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantModelImplToJson(
      this,
    );
  }
}

abstract class _VariantModel implements VariantModel {
  const factory _VariantModel(
      {required final int id,
      required final String name,
      required final String sku,
      @JsonKey(name: 'stroked_price') required final String strokedPrice,
      @JsonKey(name: 'calculable_price') required final String calculablePrice,
      @JsonKey(name: 'main_price') required final String mainPrice,
      @JsonKey(name: 'original_price') required final String originalPrice,
      @JsonKey(name: 'current_stock') final int? currentStock,
      @JsonKey(name: 'currency_symbol') required final String currencySymbol,
      @JsonKey(name: 'has_discount') required final bool hasDiscount,
      required final String image,
      required final String options,
      @JsonKey(name: 'is_selected', defaultValue: false)
      final bool? isSelected}) = _$VariantModelImpl;

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$VariantModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get sku;
  @override
  @JsonKey(name: 'stroked_price')
  String get strokedPrice;
  @override
  @JsonKey(name: 'calculable_price')
  String get calculablePrice;
  @override
  @JsonKey(name: 'main_price')
  String get mainPrice;
  @override
  @JsonKey(name: 'original_price')
  String get originalPrice;
  @override
  @JsonKey(name: 'current_stock')
  int? get currentStock;
  @override
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol;
  @override
  @JsonKey(name: 'has_discount')
  bool get hasDiscount;
  @override
  String get image;
  @override
  String get options;
  @override
  @JsonKey(name: 'is_selected', defaultValue: false)
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$VariantModelImplCopyWith<_$VariantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
