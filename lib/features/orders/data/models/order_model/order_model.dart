import 'package:flutter_tdd/features/orders/data/enum/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();
   factory OrderModel({
    required int id,
    required String code,
    required String status,
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'customer_phone') required String customerPhone,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'payment_method_label') required String paymentMethodLabel,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    @JsonKey(name: 'payment_status_label') required String paymentStatusLabel,
    @JsonKey(name: 'order_amount') required String orderAmount,
    @JsonKey(name: 'status_label') required String statusLabel,
    @JsonKey(name: 'reciving_from') required String recivingFrom,
    @JsonKey(name: 'driver_amount') required String driverAmount,
    @JsonKey(name: 'distance_km') required int distanceKm,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'delivered_at') required String deliveredAt,
    @JsonKey(name: 'assigned_at') required String assignedAt,
    @JsonKey(name: 'report_reason') required String reportReason,
     /// store distance return in newOrder for freelancer driver
    @JsonKey(name: 'store_disctance')  String? storeDistance,
     /// last three keys be nullable  when calling the orders history api
     @JsonKey(name: 'customer_address')  CustomerAddress? customerAddress,
    required List<OrderHistoryModel>? histories,
    required OrderStoreModel? store,
  }) = _OrderModel;


   bool get isPaid => paymentStatus == "paid";
   bool get isAssigned => getOrderStatus() == OrderStatus.assigned;
   bool get isPending => getOrderStatus() == OrderStatus.pending;
   bool get isReported => getOrderStatus() == OrderStatus.driverReported;
   bool get isDelivered => getOrderStatus() == OrderStatus.delivered;


  OrderStatus getOrderStatus(){
    switch(status){
      case "assigned" : return OrderStatus.assigned;
      case "in_delivery" : return OrderStatus.inDelivery;
      case "arrived" : return OrderStatus.arrived;
      case "delivered" : return OrderStatus.delivered;
      case "driver_reported" : return OrderStatus.driverReported;
      default: return OrderStatus.assigned;
    }
  }


  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

}

@freezed
class CustomerAddress with _$CustomerAddress {
  const factory CustomerAddress({
    @JsonKey(name: 'address_details') required String addressDetails,
    required String state,
    required String city,
    @JsonKey(name: 'street_name') required String streetName,
    @JsonKey(name: 'building_name') required String buildingName,
    @JsonKey(name: 'flat_no') required String flatNo,
    required String lat,
    required String lng,
    @JsonKey(name: 'map_desc') required String mapDesc,
    required String phone,
  }) = _CustomerAddress;

  factory CustomerAddress.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressFromJson(json);
}

@freezed
class OrderHistoryModel with _$OrderHistoryModel {
  const OrderHistoryModel._();
   const factory OrderHistoryModel({
    required int id,
    required String status,
    @JsonKey(name: 'status_label') required String statusLabel,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _OrderHistoryModel;

  factory OrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryModelFromJson(json);


  OrderStatus getOrderStatus(){
    switch(status){
      case "assigned" : return OrderStatus.assigned;
      case "in_delivery" : return OrderStatus.inDelivery;
      case "arrived" : return OrderStatus.arrived;
      case "delivered" : return OrderStatus.delivered;
      case "driver_reported" : return OrderStatus.driverReported;
      default: return OrderStatus.assigned;
    }
  }
}

@freezed
class OrderStoreModel with _$OrderStoreModel {
  const factory OrderStoreModel({
    required int id,
    @JsonKey(name: 'store_name') required String storeName,
    required String email,
    required String lat,
    required String lng,
  }) = _OrderStoreModel;

  factory OrderStoreModel.fromJson(Map<String, dynamic> json) =>
      _$OrderStoreModelFromJson(json);
}
