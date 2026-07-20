import 'package:flutter/foundation.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/data/enum/order_type_enum.dart';
import 'package:flutter_tdd/features/home/data/model/order_shared_models/order_shared_models.dart';
import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';
import 'package:flutter_tdd/features/orders/data/model/base_order_info/base_order_info.dart';
import 'package:flutter_tdd/features/orders/domain/model/local_picking_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:flutter_tdd/features/home/data/model/order_shared_models/order_shared_models.dart';

part 'order_model.freezed.dart';

part 'order_model.g.dart';

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
    required BaseOrderInfo base,
    required LocalPickingFields local,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        base: BaseOrderInfo.fromJson(json),
        local: LocalPickingFields.fromJson(json),
      );

  Map<String, dynamic> toFlatJson() => {
        ...base.toJson(),
        ...local.toJson(),
      };

  int get id => base.id;

  CustomerModel get customer => base.customer;

  String get code => base.code;

  String get status => base.status;

  String? get taxPercentage => base.taxPercentage;

  String? get serviceFees => base.serviceFees;

  String? get techFees => base.techFees;

  String? get vatFeeAmount => base.vatFeeAmount;

  String? get totalFeeAmount => base.totalFeeAmount;

  String? get loyaltyPointsValue => base.loyaltyPointsValue;

  String get shopType => base.shopType;

  bool get isPendingReview => base.isPendingReview;

  bool get awaitingCustomerCompletion => base.awaitingCustomerCompletion;

  bool get requiresPrescriptionReview => base.requiresPrescriptionReview;

  bool get insuranceApplied => base.insuranceApplied;

  double get bagPrice => base.bagPrice;

  bool get allowReplacement => base.allowReplacement;

  String get statusLabel => base.statusLabel;

  String get pickerNotes => base.pickerNotes;

  String? get orderDate => base.orderDate;

  String get startPickingAt => base.startPickingAt;

  String get deliveredAt => base.deliveredAt;

  String? get shippingTypeLabel => base.shippingTypeLabel;

  String? get paymentStatusText => base.paymentStatusText;

  String? get paymentMethod => base.paymentMethod;

  DriverModel? get driverInfo => base.driverInfo;

  List<OrderDetailsModel>? get ordersDetails => base.ordersDetails;

  List<ModifiedProductModel>? get modifiedProducts => base.modifiedProducts;

  bool? get paymentStatus => base.paymentStatus;

  String? get shippingType => base.shippingType;

  /// ---- forwarded reads of the fields living on [local] ----
  List<OrderDetailsModel>? get deletedOrders => local.deletedOrders;

  List<OrderDetailsModel>? get changedProducts => local.changedProducts;

  List<OrderDetailsModel>? get qntChangedProducts => local.qntChangedProducts;

  OrderStatusEnum getOrderStatus() => base.getOrderStatus();

  OrderTypeEnum? getOrderType() => base.getOrderType();

  bool get orderDelivery => base.orderDelivery;

  bool get orderPickUp => base.orderPickUp;

  bool get isAssigned => base.isAssigned;

  bool get isNewOrder => base.isNewOrder;

  double getOriginalTotalPrice() => base.getOriginalTotalPrice();

  InvoiceModel get invoiceModel => base.invoiceModel;

  /// ---- OrderModel-only logic ----
  int get getFullCount {
    return ordersDetails?.fold(
            0,
            (previousValue, element) =>
                (previousValue ?? 0) + element.quantity) ??
        totalItems;
  }

  bool get isPharm => shopType == "pharmacy";

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

  String? getOrderDate() {
    try {
      if (orderDate == null) return null;
      DateTime date = DateTimeHelper.convertToDateTime(
          strDate: orderDate!, formatType: "yyyy-MM-dd HH:mm:ss");
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
          strDate: "deliveredAt", formatType: "yyyy-MM-dd HH:mm:ss");
      String startDate = DateTimeHelper.formatDate(
          date: date, formatType: "dd-MM-yyyy - h:mm a");
      return startDate;
    } catch (error) {
      return null;
    }
  }
}

/// Fields mutated in place elsewhere in the app (order_details_controller.dart,
/// card_order_widget.dart, timer_card_details_widget.dart, show_orders_requester.dart).
/// Kept as an extension (not class members) because freezed forbids
/// getter/setter pairs inside a @freezed / @unfreezed class body.
extension OrderModelMutableFields on OrderModel {
  String get total => base.total;

  set total(String value) => base.total = value;

  String? get subtotal => base.subtotal;

  set subtotal(String? value) => base.subtotal = value;

  String? get tax => base.tax;

  set tax(String? value) => base.tax = value;

  String? get couponDiscount => base.couponDiscount;

  set couponDiscount(String? value) => base.couponDiscount = value;

  String? get envFees => base.envFees;

  set envFees(String? value) => base.envFees = value;

  int get bagsCount => base.bagsCount;

  set bagsCount(int value) => base.bagsCount = value;

  int get preparationMinutes => base.preparationMinutes;

  set preparationMinutes(int value) => base.preparationMinutes = value;

  List<OrderDiscountModel>? get discounts => base.discounts;

  set discounts(List<OrderDiscountModel>? value) => base.discounts = value;

  int get totalItems => base.totalItems;

  set totalItems(int value) => base.totalItems = value;

  List<OrderDisplayItem>? get displayItems => local.displayItems;

  set displayItems(List<OrderDisplayItem>? value) =>
      local.displayItems = value;

  double? get pickedPercent => local.pickedPercent;

  set pickedPercent(double? value) => local.pickedPercent = value;

  int? get preparationSeconds => local.preparationSeconds;

  set preparationSeconds(int? value) => local.preparationSeconds = value;
}
