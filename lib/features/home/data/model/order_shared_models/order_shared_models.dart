import 'dart:developer';

import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';
import 'package:flutter_tdd/features/home/data/enum/customer_type.dart';
import 'package:flutter_tdd/features/home/data/enum/product_status_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_shared_models.freezed.dart';

part 'order_shared_models.g.dart';

@unfreezed
class OrderDetailsModel with _$OrderDetailsModel {
  OrderDetailsModel._();

  factory OrderDetailsModel({
    required int id,
    required String variation,
    required int quantity,
    required String price,
    @JsonKey(name: "unit_price") required String unitPrice,
    ProductModel? product,

    /// used in local data
    @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
    @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
    @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
    @JsonKey(name: "picker_notes", defaultValue: "") String? pickerNotes,
    @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0) double? fixedUnitPrice,
    @JsonKey(name: 'fixed_qnt', defaultValue: 0) int? fixedQnt,
    @JsonKey(name: 'old_replaced_model',) OldReplacedModel? oldReplacedModel,
    @JsonKey(name: 'insurance_coverage_percentage', defaultValue: null) String? insuranceCoveragePercentageApi,
    @JsonKey(name: 'instructions', defaultValue: null) String? instructionsApi,

    /// prescription order local fields
    @JsonKey(name: 'insurance_coverage_percentage_local', defaultValue: null) double? insuranceCoveragePercentage,
    @JsonKey(name: 'instructions_local', defaultValue: null) String? instructions,
    @JsonKey(name: 'current_stock', defaultValue: null) int? currentStock,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  String get getProductPrice {
    // var itemPrice = double.parse(unitPrice);
    // var singleItemPrice = (itemPrice/quantity).toStringAsFixed(2);
    return unitPrice;
  }



  double get remainQntPrice {
    double itemPrice = double.parse(unitPrice);
    return itemPrice * remainQnt;
  }

  int get remainQnt {
    return quantity - product!.pickedQuantity!;
  }

  bool get hasNoFixedPriceYet =>
      fixedUnitPrice == null || fixedUnitPrice == 0.0;


}

@unfreezed
class ProductModel with _$ProductModel {
  ProductModel._();

  factory ProductModel({
    required int id,
    required String name,
    required String barcode,
    required String unit,
    CategoryModel? category,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
    @JsonKey(name: 'is_fresh') required bool isFresh,

    /// used in local data
    @JsonKey(name: 'picked_percent', defaultValue: 0.0)
    double? productPickedPercent,
    @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
    @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
    ProductStatusEnum? productStatus,
    @JsonKey(name: 'show_edit_price', defaultValue: false) bool? showEditPrice,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  bool get replaced => productStatus!.isReplaced;

  bool get modified =>
      productStatus!.isPriceModified || productStatus!.isQntModified;

  bool get isAdded => productStatus!.isAdded;
}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CustomerModel with _$CustomerModel {
  CustomerModel._();

  factory CustomerModel({
    required String name,
    required String email,
    required String phone,
    @JsonKey(name: "customer_type") required String customerType,
    @JsonKey(name: "customer_type_label") required String customerTypeLabel,
    @JsonKey(name: "shareholder_number") required String? shareHolderNumber,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  String get customerPhone {
    BuildContext context = getIt<GlobalContext>().context();
    return PhoneHelper.handleFullPhone(context, phone);
  }

  CustomerType get getCustomerType {
    switch (customerType) {
      case "regular":
        return CustomerType.regular;
      case "shareholder":
        return CustomerType.shareHolder;
      case "vip":
        return CustomerType.vip;
      default:
        return CustomerType.regular;
    }
  }

  bool get hasShareHolderNumber =>
      shareHolderNumber != null && shareHolderNumber?.isNotEmpty == true;
}

@freezed
class DriverModel with _$DriverModel {
  DriverModel._();

  factory DriverModel({
    required int id,
    @JsonKey(name: "avg_rate") required num rate,
    required String name,
    required String avatar,
    required String email,
    required String phone,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);

  String get customerPhone {
    BuildContext context = getIt<GlobalContext>().context();
    return PhoneHelper.handleFullPhone(context, phone);
  }
}

@freezed
class OrderDiscountModel with _$OrderDiscountModel {
  const OrderDiscountModel._();
  factory OrderDiscountModel({
    required int id,
    required String type,
    @JsonKey(name: 'type_label') required String typeLabel,
    @JsonKey(name: 'type_description') required String typeDescription,
    @JsonKey(name: 'discount_type') required String discountType,
    required String discount,
    @JsonKey(name: 'discount_value') required String discountValue,
  }) = _OrderDiscountModel;

  factory OrderDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDiscountModelFromJson(json);
}

@freezed
class ModifiedProductModel with _$ModifiedProductModel {
  const factory ModifiedProductModel({
    required int id,

    /// reduce | add | remove | replace
    required String action,

    @JsonKey(name: 'action_label') required String actionLabel,

    @JsonKey(defaultValue: '') String? notes,

    @JsonKey(name: 'old_price') String? oldPrice,

    @JsonKey(name: 'new_price') String? newPrice,

    @JsonKey(name: 'old_quantity') int? oldQuantity,

    @JsonKey(name: 'new_quantity') int? newQuantity,

    @JsonKey(name: 'old_product') ProductModel? oldProduct,

    @JsonKey(name: 'new_product') ProductModel? newProduct,

    @JsonKey(name: 'old_variation', defaultValue: '') String? oldVariation,

    @JsonKey(name: 'new_variation', defaultValue: '') String? newVariation,

    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ModifiedProductModel;

  factory ModifiedProductModel.fromJson(Map<String, dynamic> json) =>
      _$ModifiedProductModelFromJson(json);
}

@freezed
class OrderDisplayItem with _$OrderDisplayItem {
  const OrderDisplayItem._();
  const factory OrderDisplayItem({
    OrderDetailsModel? current,
    ModifiedProductModel? history,
  }) = _OrderDisplayItem;

  factory OrderDisplayItem.fromJson(Map<String, dynamic> json) =>
      _$OrderDisplayItemFromJson(json);



  bool get isQntReduce => history?.action == "reduce";

  bool get isPriceChanged => history?.action == "update_price";

  bool get isRemoved => history?.action == "remove";

  String get name => (isRemoved ? history?.oldProduct?.name : current?.product?.name ) ?? "";

  String get image => (isRemoved ? history?.oldProduct?.thumbnailImage : current?.product?.thumbnailImage ) ?? "";

  int get qnt => (isRemoved ? history?.oldQuantity : current?.quantity ) ?? 0;

  String get unitPrice => (isRemoved ? removedItemPrice().toStringAsFixed(2) : current?.unitPrice ) ?? "0.0";


  double removedItemPrice(){
    double price = double.parse(history?.oldPrice??"0.0");
    int qnt = history?.oldQuantity ?? 0;
    try{
      return price/qnt;
    }catch(e){
      log(" ===>>>>error $e <<<=== ");
      return 0;
    }
  }

}


@freezed
class OldReplacedModel with _$OldReplacedModel {
  const factory OldReplacedModel({
    required int id,
    required String image,
    required String name,
    required String unitPrice,
    required int qnt,
    required String replaceReason,
  }) = _OldReplacedModel;

  factory OldReplacedModel.fromJson(Map<String, dynamic> json) =>
      _$OldReplacedModelFromJson(json);
}
