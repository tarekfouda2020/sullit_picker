import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/data/enum/order_type_enum.dart';
import 'package:flutter_tdd/features/home/data/model/order_shared_models/order_shared_models.dart';
import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';
import 'package:flutter_tdd/features/orders/data/model/base_order_info/base_order_info.dart';
import 'package:flutter_tdd/features/orders/domain/model/local_picking_fields.dart';
import 'package:flutter_tdd/features/orders/domain/model/pharmacy_only_info_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:flutter_tdd/features/orders/domain/model/pharmacy_only_info_domain_model.dart'
    show AttachmentModel, InsuranceCompanyModel;

part 'pharmacy_order_model.freezed.dart';

part 'pharmacy_order_model.g.dart';

@unfreezed
class PharmacyOrderModel with _$PharmacyOrderModel {
  const PharmacyOrderModel._();

  factory PharmacyOrderModel({
    required BaseOrderInfo base,
    required LocalPickingFields local,
    required PharmacyOnlyInfoDomainModel pharmacyOnly,
  }) = _PharmacyOrderModel;

  factory PharmacyOrderModel.fromJson(Map<String, dynamic> json) =>
      PharmacyOrderModel(
        base: BaseOrderInfo.fromJson(json),
        local: LocalPickingFields.fromJson(json),
        pharmacyOnly: PharmacyOnlyInfoDomainModel.fromJson(json),
      );

  Map<String, dynamic> toFlatJson() => {
        ...base.toJson(),
        ...local.toJson(),
        ...pharmacyOnly.toJson(),
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

  /// ---- forwarded reads of the pharmacy-only fields living on [pharmacyOnly] ----
  String? get paymentMethodKey => pharmacyOnly.paymentMethodKey;

  String? get additionalInfo => pharmacyOnly.additionalInfo;

  List<dynamic>? get orderNoteReplies => pharmacyOnly.orderNoteReplies;

  List<AttachmentModel>? get insuranceAttachments =>
      pharmacyOnly.insuranceAttachments;

  List<AttachmentModel>? get prescriptionAttachments =>
      pharmacyOnly.prescriptionAttachments;

  InsuranceCompanyModel? get insuranceCompany => pharmacyOnly.insuranceCompany;

  String? get cancelReason => pharmacyOnly.cancelReason;

  String? get requestedBy => pharmacyOnly.requestedBy;

  String? get requestedByLabel => pharmacyOnly.requestedByLabel;

  String? get identityDocumentFile => pharmacyOnly.identityDocumentFile;

  /// ---- shared logic delegated to [base] ----
  OrderStatusEnum getOrderStatus() => base.getOrderStatus();

  OrderTypeEnum? getOrderType() => base.getOrderType();

  bool get orderDelivery => base.orderDelivery;

  bool get orderPickUp => base.orderPickUp;

  bool get isAssigned => base.isAssigned;

  bool get isNewOrder => base.isNewOrder;

  double getOriginalTotalPrice() => base.getOriginalTotalPrice();

  InvoiceModel get invoiceModel => base.invoiceModel;
}

/// Fields mutated in place elsewhere in the app. Kept as an extension (not
/// class members) because freezed forbids getter/setter pairs inside a
/// @freezed / @unfreezed class body. Symmetric with OrderModelMutableFields
/// on OrderModel.
extension PharmacyOrderModelMutableFields on PharmacyOrderModel {
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
