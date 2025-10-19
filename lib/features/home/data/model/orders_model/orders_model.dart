
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.freezed.dart';
part 'orders_model.g.dart';

@freezed
class OrdersModel with _$OrdersModel {
  const factory OrdersModel({
    @JsonKey(name: 'assigned_orders') required List<OrderItem> assignedOrders,
    @JsonKey(name: 'assigned_orders_count') required int assignedOrdersCount,
    @JsonKey(name: 'new_orders') required List<OrderItem> newOrders,
  }) = _OrdersModel;

  factory OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersModelFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
 const OrderItem._();
  const factory OrderItem({
    required int id,
    required String code,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'allow_replacement') required bool allowReplacement,
    required String status,
    @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
    @JsonKey(name: 'start_picking_at') required String startPickingAt,
    @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  OrderStatusEnum getOrderStatus(){
    switch(status){
      case 'preparing':
        return OrderStatusEnum.preparing;
      case 'new':
        return OrderStatusEnum.newOrder;
      default:
        return OrderStatusEnum.newOrder;
    }
  }

  bool get isAssigned => getOrderStatus() == OrderStatusEnum.preparing;
  bool get isNewOrder => getOrderStatus() == OrderStatusEnum.newOrder;

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

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}


@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String name,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}