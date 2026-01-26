import 'dart:developer';

import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';
import 'package:flutter_tdd/features/home/data/enum/customer_type.dart';
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/data/enum/product_status_enum.dart';
import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.freezed.dart';

part 'orders_model.g.dart';

@freezed
class OrdersList with _$OrdersList {
  const factory OrdersList({
    @JsonKey(name: 'assigned_orders') required List<OrderModel> assignedOrders,
    @JsonKey(name: 'assigned_orders_count') required int assignedOrdersCount,
    @JsonKey(name: 'new_orders') required List<OrderModel> newOrders,
  }) = _OrdersList;

  factory OrdersList.fromJson(Map<String, dynamic> json) =>
      _$OrdersListFromJson(json);
}

@unfreezed
@immutable
class OrderModel with _$OrderModel {
   const OrderModel._();

  factory OrderModel({
    required int id,
    required CustomerModel customer,
    required String code,
    required String total,
    required String status,
    String? subtotal,
    String? shipping,
    String? tax,
    @JsonKey(name: 'coupon_discount') String? couponDiscount,
    @JsonKey(name: 'service_fees') String? serviceFees,
    @JsonKey(name: 'environment_fees') String? envFees,
    @JsonKey(name: 'technology_fees') String? techFees,
    @JsonKey(name: 'vat_fee_amount') String? vatFeeAmount,
    @JsonKey(name: 'total_fee_amount') String? totalFeeAmount,
    @JsonKey(name: 'loyalty_points_value') String? loyaltyPointsValue,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'bag_count') required int bagsCount,
    @JsonKey(name: 'bag_price') required double bagPrice,
    @JsonKey(name: 'allow_replacement') required bool allowReplacement,
    @JsonKey(name: 'status_label') required String statusLabel,
    @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
    @JsonKey(name: 'start_picking_at') required String startPickingAt,
    @JsonKey(name: 'delivered_at') required String deliveredAt,
    @JsonKey(name: 'payment_status') bool? paymentStatus,
    @JsonKey(name: 'payment_status_text') String? paymentStatusText,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'driver') required DriverModel? driverInfo,
    @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
    @JsonKey(name: 'order_detail_histories') List<ModifiedProductModel>? modifiedProducts,
    @JsonKey(name: 'display_items') List<OrderDisplayItem>? displayItems,
    @JsonKey(name: 'order_discounts') List<OrderDiscountModel>? discounts,

    /// all keys below used in local data
    @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
    List<OrderDetailsModel>? deletedOrders,

    /// changed_orders hold the replaced items(that being replaced all) and modified items( only where there price edited)
    @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
    List<OrderDetailsModel>? changedProducts,

    /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
    /// in replace item...if the original one qnt reduced by 1
    /// the original will added in this list
    @JsonKey(name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
    List<OrderDetailsModel>? qntChangedProducts,
    @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
    @JsonKey(name: 'preparation_seconds', defaultValue: 0)
    int? preparationSeconds,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  int get getFullCount {
    return ordersDetails?.fold(
            0,
            (previousValue, element) =>
                (previousValue ?? 0) + element.quantity) ??
        totalItems;
  }






  OrderStatusEnum getOrderStatus() {
    switch (status) {
      case 'preparing':
        return OrderStatusEnum.preparing;
      case 'new':
      case 'pending':
        return OrderStatusEnum.newOrder;
      default:
        return OrderStatusEnum.newOrder;
    }
  }

  bool get isAssigned => getOrderStatus() == OrderStatusEnum.preparing;

  bool get isNewOrder => getOrderStatus() == OrderStatusEnum.newOrder;

  bool get isPaid => paymentStatus == true;

  String? getStartPickingDate() {
    try {
      DateTime date = DateTimeHelper.convertToDateTime(
          strDate: startPickingAt, formatType: "yyyy-MM-dd HH:mm:ss");
      String startDate = DateTimeHelper.formatDate(
          date: date, formatType: "d/M/yyyy  - hh:mm a");
      return startDate;
    } catch (error) {
      return null;
    }
  }

  String? getDeliveredDate() {
    try {
      DateTime date = DateTimeHelper.convertToDateTime(
          strDate: deliveredAt, formatType: "yyyy-MM-dd HH:mm:ss");
      String startDate = DateTimeHelper.formatDate(
          date: date, formatType: "dd-MM-yyyy - h:mm a");
      return startDate;
    } catch (error) {
      return null;
    }
  }

  double getOriginalTotalPrice() {
    double totalPrice = ordersDetails!
        .fold(0.0, (sum, item) => sum + (double.tryParse(item.price) ?? 0.0));
    return totalPrice;
  }

  InvoiceModel get invoiceModel => InvoiceModel(
        subTotal: subtotal ?? "",
        shipping: shipping ?? "",
        tax: tax ?? "",
        couponDiscount: couponDiscount ?? "",
        serviceFees: serviceFees ?? "",
        techFees: techFees ?? "",
        vatFeeAmount: vatFeeAmount ?? "",
        totalFeeAmount: totalFeeAmount ?? "",
        loyaltyPointsValue: loyaltyPointsValue ?? "",
        grandTotal: total,
        envFees: envFees ?? "",
        bagsCount: bagsCount,
        total: totalFeeAmount ?? "",
        discounts: discounts ?? <OrderDiscountModel>[],
        bagPrice: bagPrice,
      );
}

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
    @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
    @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
    @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
    @JsonKey(name: "picker_notes", defaultValue: "") String? pickerNotes,
    @JsonKey(name: 'fixed_unit_price', defaultValue: 0.0) double? fixedUnitPrice,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  String get getProductPrice {
    // var itemPrice = double.parse(unitPrice);
    // var singleItemPrice = (itemPrice/quantity).toStringAsFixed(2);
    return unitPrice;
  }

  // double get remainQntPrice{
  //   var itemPrice = double.parse(price);
  //   var singleItemPrice = (itemPrice/quantity);
  //   if(product!.replaced){
  //     return itemPrice*remainQnt ;
  //   }else{
  //     return singleItemPrice*remainQnt;
  //   }
  // }

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