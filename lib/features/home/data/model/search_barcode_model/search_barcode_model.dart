import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_barcode_model.freezed.dart';
part 'search_barcode_model.g.dart';

@freezed
class SearchBarcodeModel with _$SearchBarcodeModel {
  const factory SearchBarcodeModel({
    required int id,
    required String name,
    required String barcode,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
    @JsonKey(name: 'price_high_low_discount') required String priceHighLowDiscount,
    @JsonKey(name: 'price_high_low') required String priceHighLow,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    required String discount,
    @JsonKey(name: 'currency_symbol') required String currencySymbol,
    required VariantModel variant,
  }) = _SearchBarcodeModel;

  factory SearchBarcodeModel.fromJson(Map<String, dynamic> json) =>
      _$SearchBarcodeModelFromJson(json);
}

@freezed
class VariantModel with _$VariantModel {
  const factory VariantModel({
    required int id,
    required String name,
    required String sku,
    @JsonKey(name: 'stroked_price') required String strokedPrice,
    @JsonKey(name: 'calculable_price') required String calculablePrice,
    @JsonKey(name: 'main_price') required String mainPrice,
    @JsonKey(name: 'original_price') required String originalPrice,
    @JsonKey(name: 'current_stock') required int currentStock,
    @JsonKey(name: 'currency_symbol') required String currencySymbol,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    required String image,
    required String options,
  }) = _VariantModel;

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);
}
