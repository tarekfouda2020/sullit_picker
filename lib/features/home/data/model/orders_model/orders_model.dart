import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'orders_model.freezed.dart';

part 'orders_model.g.dart';

@freezed
class OrdersList with _$OrdersList {
  @HiveType(typeId: 0, adapterName: "OrdersListAdapter")
  const factory OrdersList({
    @HiveField(0) @JsonKey(name: 'assigned_orders') required List<OrderModel> assignedOrders,
    @HiveField(1) @JsonKey(name: 'assigned_orders_count') required int assignedOrdersCount,
    @HiveField(2) @JsonKey(name: 'new_orders') required List<OrderModel> newOrders,
  }) = _OrdersList;

  factory OrdersList.fromJson(Map<String, dynamic> json) => _$OrdersListFromJson(json);
}

@freezed
class OrderModel with _$OrderModel {
  @HiveType(typeId: 1, adapterName: "OrderModelAdapter")
  const factory OrderModel({
    @HiveField(0) required int id,
    @HiveField(1) required String code,
    @HiveField(2) @JsonKey(name: 'total_items') required int totalItems,
    @HiveField(3) @JsonKey(name: 'allow_replacement') required bool allowReplacement,
    @HiveField(4) required String status,
    @HiveField(5) @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
    @HiveField(6) @JsonKey(name: 'start_picking_at') required String startPickingAt,
    @HiveField(7) @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
  }) = _OOrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  const factory OrderDetailsModel({
    required int id,
    required String variation,
    required int quantity,
    required String price,
    required ProductModel product,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String name,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
