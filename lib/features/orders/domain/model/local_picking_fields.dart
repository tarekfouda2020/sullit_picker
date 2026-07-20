import 'package:flutter_tdd/features/home/data/model/order_shared_models/order_shared_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_picking_fields.freezed.dart';

part 'local_picking_fields.g.dart';

/// Local-only picking/edit-flow fields shared by every order type
/// (OrderModel, PharmacyOrderModel, ...). Grouped here only so each order
/// type's factory/fromJson can compose one generated `fromJson` call
/// instead of duplicating this same field list + manual JSON parsing.
/// Not a type meant to be passed around outside those composing classes.
@unfreezed
class LocalPickingFields with _$LocalPickingFields {
  const LocalPickingFields._();

  factory LocalPickingFields({
    @JsonKey(name: 'display_items') List<OrderDisplayItem>? displayItems,

    /// deleted_orders hold the removed items
    @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
    List<OrderDetailsModel>? deletedOrders,

    /// changed_products hold the replaced items(that being replaced all) and modified items( only where there price edited)
    @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
    List<OrderDetailsModel>? changedProducts,

    /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
    /// in replace item...if the original one qnt reduced by 1
    /// the original will added in this list
    @JsonKey(name: 'added_products', defaultValue: <OrderDetailsModel>[])
    List<OrderDetailsModel>? qntChangedProducts,
    @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
    @JsonKey(name: 'preparation_seconds', defaultValue: 0)
    int? preparationSeconds,
  }) = _LocalPickingFields;

  factory LocalPickingFields.fromJson(Map<String, dynamic> json) =>
      _$LocalPickingFieldsFromJson(json);
}
