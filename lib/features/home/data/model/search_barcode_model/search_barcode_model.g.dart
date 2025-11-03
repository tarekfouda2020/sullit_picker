// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_barcode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchBarcodeModelImpl _$$SearchBarcodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchBarcodeModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      barcode: json['barcode'] as String,
      thumbnailImage: json['thumbnail_image'] as String,
      priceHighLowDiscount: json['price_high_low_discount'] as String,
      priceHighLow: json['price_high_low'] as String,
      hasDiscount: json['has_discount'] as bool,
      discount: json['discount'] as String,
      currencySymbol: json['currency_symbol'] as String,
      variant: VariantModel.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchBarcodeModelImplToJson(
        _$SearchBarcodeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'barcode': instance.barcode,
      'thumbnail_image': instance.thumbnailImage,
      'price_high_low_discount': instance.priceHighLowDiscount,
      'price_high_low': instance.priceHighLow,
      'has_discount': instance.hasDiscount,
      'discount': instance.discount,
      'currency_symbol': instance.currencySymbol,
      'variant': instance.variant,
    };

_$VariantModelImpl _$$VariantModelImplFromJson(Map<String, dynamic> json) =>
    _$VariantModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      sku: json['sku'] as String,
      strokedPrice: json['stroked_price'] as String,
      calculablePrice: json['calculable_price'] as String,
      mainPrice: json['main_price'] as String,
      originalPrice: json['original_price'] as String,
      currentStock: (json['current_stock'] as num).toInt(),
      currencySymbol: json['currency_symbol'] as String,
      hasDiscount: json['has_discount'] as bool,
      image: json['image'] as String,
      options: json['options'] as String,
    );

Map<String, dynamic> _$$VariantModelImplToJson(_$VariantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sku': instance.sku,
      'stroked_price': instance.strokedPrice,
      'calculable_price': instance.calculablePrice,
      'main_price': instance.mainPrice,
      'original_price': instance.originalPrice,
      'current_stock': instance.currentStock,
      'currency_symbol': instance.currencySymbol,
      'has_discount': instance.hasDiscount,
      'image': instance.image,
      'options': instance.options,
    };
