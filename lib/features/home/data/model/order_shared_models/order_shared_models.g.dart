// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_shared_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      variation: json['variation'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: json['price'] as String,
      unitPrice: json['unit_price'] as String,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      newVariantId: (json['new_variant_id'] as num?)?.toInt() ?? -1,
      addedVariantId: (json['added_variant_id'] as num?)?.toInt() ?? -1,
      newPrice: (json['new_price'] as num?)?.toDouble() ?? 0.0,
      pickerNotes: json['picker_notes'] as String? ?? '',
      fixedUnitPrice: (json['fixed_unit_price'] as num?)?.toDouble() ?? 0.0,
      fixedQnt: (json['fixed_qnt'] as num?)?.toInt() ?? 0,
      oldReplacedModel: json['old_replaced_model'] == null
          ? null
          : OldReplacedModel.fromJson(
              json['old_replaced_model'] as Map<String, dynamic>),
      insuranceCoveragePercentageApi:
          json['insurance_coverage_percentage'] as String?,
      instructionsApi: json['instructions'] as String?,
      insuranceCoveragePercentage:
          (json['insurance_coverage_percentage_local'] as num?)?.toDouble(),
      instructions: json['instructions_local'] as String?,
      currentStock: (json['current_stock'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variation': instance.variation,
      'quantity': instance.quantity,
      'price': instance.price,
      'unit_price': instance.unitPrice,
      'product': instance.product,
      'new_variant_id': instance.newVariantId,
      'added_variant_id': instance.addedVariantId,
      'new_price': instance.newPrice,
      'picker_notes': instance.pickerNotes,
      'fixed_unit_price': instance.fixedUnitPrice,
      'fixed_qnt': instance.fixedQnt,
      'old_replaced_model': instance.oldReplacedModel,
      'insurance_coverage_percentage': instance.insuranceCoveragePercentageApi,
      'instructions': instance.instructionsApi,
      'insurance_coverage_percentage_local':
          instance.insuranceCoveragePercentage,
      'instructions_local': instance.instructions,
      'current_stock': instance.currentStock,
    };

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      barcode: json['barcode'] as String,
      unit: json['unit'] as String,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      thumbnailImage: json['thumbnail_image'] as String,
      isFresh: json['is_fresh'] as bool,
      variantId: (json['variant_id'] as num?)?.toInt(),
      productPickedPercent: (json['picked_percent'] as num?)?.toDouble() ?? 0.0,
      pickedQuantity: (json['picked_quantity'] as num?)?.toInt() ?? 0,
      productStatus: $enumDecodeNullable(
              _$ProductStatusEnumEnumMap, json['product_status']) ??
          ProductStatusEnum.noEdit,
      showEditPrice: json['show_edit_price'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'barcode': instance.barcode,
      'unit': instance.unit,
      'category': instance.category,
      'thumbnail_image': instance.thumbnailImage,
      'is_fresh': instance.isFresh,
      'variant_id': instance.variantId,
      'picked_percent': instance.productPickedPercent,
      'picked_quantity': instance.pickedQuantity,
      'product_status': _$ProductStatusEnumEnumMap[instance.productStatus],
      'show_edit_price': instance.showEditPrice,
    };

const _$ProductStatusEnumEnumMap = {
  ProductStatusEnum.noEdit: 'noEdit',
  ProductStatusEnum.priceModified: 'priceModified',
  ProductStatusEnum.qntModified: 'qntModified',
  ProductStatusEnum.replaced: 'replaced',
  ProductStatusEnum.added: 'added',
  ProductStatusEnum.normal: 'normal',
};

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      customerType: json['customer_type'] as String,
      customerTypeLabel: json['customer_type_label'] as String,
      shareHolderNumber: json['shareholder_number'] as String?,
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'customer_type': instance.customerType,
      'customer_type_label': instance.customerTypeLabel,
      'shareholder_number': instance.shareHolderNumber,
    };

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      id: (json['id'] as num).toInt(),
      rate: json['avg_rate'] as num,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avg_rate': instance.rate,
      'name': instance.name,
      'avatar': instance.avatar,
      'email': instance.email,
      'phone': instance.phone,
    };

_$OrderDiscountModelImpl _$$OrderDiscountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDiscountModelImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      typeDescription: json['type_description'] as String,
      discountType: json['discount_type'] as String,
      discount: json['discount'] as String,
      discountValue: json['discount_value'] as String,
    );

Map<String, dynamic> _$$OrderDiscountModelImplToJson(
        _$OrderDiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'type_description': instance.typeDescription,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'discount_value': instance.discountValue,
    };

_$ModifiedProductModelImpl _$$ModifiedProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ModifiedProductModelImpl(
      id: (json['id'] as num).toInt(),
      action: json['action'] as String,
      actionLabel: json['action_label'] as String,
      notes: json['notes'] as String? ?? '',
      oldPrice: json['old_price'] as String?,
      newPrice: json['new_price'] as String?,
      oldQuantity: (json['old_quantity'] as num?)?.toInt(),
      newQuantity: (json['new_quantity'] as num?)?.toInt(),
      oldProduct: json['old_product'] == null
          ? null
          : ProductModel.fromJson(json['old_product'] as Map<String, dynamic>),
      newProduct: json['new_product'] == null
          ? null
          : ProductModel.fromJson(json['new_product'] as Map<String, dynamic>),
      oldVariation: json['old_variation'] as String? ?? '',
      newVariation: json['new_variation'] as String? ?? '',
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$ModifiedProductModelImplToJson(
        _$ModifiedProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'action_label': instance.actionLabel,
      'notes': instance.notes,
      'old_price': instance.oldPrice,
      'new_price': instance.newPrice,
      'old_quantity': instance.oldQuantity,
      'new_quantity': instance.newQuantity,
      'old_product': instance.oldProduct,
      'new_product': instance.newProduct,
      'old_variation': instance.oldVariation,
      'new_variation': instance.newVariation,
      'created_at': instance.createdAt,
    };

_$OrderDisplayItemImpl _$$OrderDisplayItemImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDisplayItemImpl(
      current: json['current'] == null
          ? null
          : OrderDetailsModel.fromJson(json['current'] as Map<String, dynamic>),
      history: json['history'] == null
          ? null
          : ModifiedProductModel.fromJson(
              json['history'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDisplayItemImplToJson(
        _$OrderDisplayItemImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'history': instance.history,
    };

_$OldReplacedModelImpl _$$OldReplacedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OldReplacedModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      unitPrice: json['unitPrice'] as String,
      qnt: (json['qnt'] as num).toInt(),
      replaceReason: json['replaceReason'] as String,
    );

Map<String, dynamic> _$$OldReplacedModelImplToJson(
        _$OldReplacedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'unitPrice': instance.unitPrice,
      'qnt': instance.qnt,
      'replaceReason': instance.replaceReason,
    };
