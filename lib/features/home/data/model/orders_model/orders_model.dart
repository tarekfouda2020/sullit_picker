
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
  const factory OrderItem({
    required int id,
    required String code,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'allow_replacement') required bool allowReplacement,
    required String status,
    @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
    @JsonKey(name: 'start_picking_at') required String startPickingAt,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
