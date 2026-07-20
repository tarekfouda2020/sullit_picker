import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';

class PrepareOrderParams {
  final int orderId;
  final List<OrderDetailsModel> currentProductsDetails;
  final List<OrderDetailsModel>? deletedDetails;
  final int? bagCount;

  PrepareOrderParams({
    required this.orderId,
    required this.currentProductsDetails,
    this.deletedDetails,
    this.bagCount,
  }) {
    toJson();
  }

  List<OrderDetailsModel> _mergeAddedProductsById() {
    final mergedMap = <int, OrderDetailsModel>{};
    var list = currentProductsDetails
        .where((e) => e.addedVariantId != null && e.addedVariantId != -1)
        .toList();
    for (final item in list) {
      if (mergedMap.containsKey(item.id)) {
        final old = mergedMap[item.id]!;
        mergedMap[item.id] = old.copyWith(
          quantity: old.quantity + item.quantity,
        );
      } else {
        mergedMap[item.id] = item;
      }
    }

    return mergedMap.values.toList();
  }

  List<Map<String, dynamic>> get _addedProductsJson => _mergeAddedProductsById()
      .map((e) => _actionJson(PrepareOrderActionType.add, e))
      .toList();

  Map<String, dynamic> toJson() {
    final List<OrderDetailsModel> currentDetails = currentProductsDetails;
    final List<OrderDetailsModel> removeData = (deletedDetails ?? []);
    // log("======>>>> all data before map$currentProductsDetails <<<<<<======");
    final List<Map<String, dynamic>> currentDetailsJson = currentDetails
        .map((e) {
          /// replaced projects
          if (e.newVariantId != null && e.newVariantId != -1) {
            // if (e.newPrice != null && e.newPrice != 0.0) {
            //   return _actionJson(PrepareOrderActionType.updatePrice, e);
            // }
            return _actionJson(PrepareOrderActionType.replace, e);
          }

          /// reduced item
          if (e.product!.productStatus!.isQntModified) {
            return _actionJson(PrepareOrderActionType.reduce, e);
          }

          /// updated price
          if (e.newPrice != null && e.newPrice != 0.0 && e.product?.productStatus?.isPriceModified == true) {
            return _actionJson(PrepareOrderActionType.updatePrice, e);
          }

        })
        .where((e) => e != null)
        .cast<Map<String, dynamic>>()
        .toList();

    final List<Map<String, dynamic>> removeDetailsJson = removeData
        .where(
          (element) => !element.product!.productStatus!.isAdded,
        )
        .map((e) => _actionJson(PrepareOrderActionType.remove, e))
        .toList();

    final List<Map<String, dynamic>> allDetailsJsons = [
      ...currentDetailsJson,
      ..._addedProductsJson,
      ...removeDetailsJson,
    ];

    log("======>>>> all data current json $currentDetailsJson <<<<<<======");
    log("======>>>> added data json $_addedProductsJson <<<<<<======");

    log("======>>>> all data $allDetailsJsons <<<<<<======");
    log("======>>>> deleted data $removeDetailsJson <<<<<<======");

    return {
      if (allDetailsJsons.isNotEmpty) "details": jsonEncode(allDetailsJsons),
      if (bagCount != null && (bagCount ?? 0) > 0) "bag_count": bagCount,
    };
  }

  Map<String, dynamic> _actionJson(
      PrepareOrderActionType actionType, OrderDetailsModel data) {
    switch (actionType) {
      case PrepareOrderActionType.updatePrice:
        return {
          "id": data.id,
          "action": "update_price",
          "price": data.price,
          "picker_notes": data.pickerNotes!,
        };
      case PrepareOrderActionType.replace:
        return {
          "id": data.id,
          "action": "replace",
          "new_variant_id": data.newVariantId,
          ...getPriceField(data),
          "picker_notes": data.pickerNotes!
        };
      case PrepareOrderActionType.reduce:
        return {
          "id": data.id,
          "action": "reduce",
          "qty": data.quantity,
          ...getPriceField(data),
          "picker_notes": data.pickerNotes!,
        };
      case PrepareOrderActionType.remove:
        return {
          "id": data.id,
          "action": "remove",
          "picker_notes": data.pickerNotes!,
        };
      case PrepareOrderActionType.add:
        return {
          "action": "add",
          "variant_id": data.addedVariantId,
          "qty": data.quantity,
          ...getPriceField(data),
          "picker_notes": data.pickerNotes!,
        };
    }
  }
}

Map<String, dynamic> getPriceField(OrderDetailsModel data) {
  if (data.newPrice != null && data.newPrice != 0) {
    return {"price": data.price};
  } else {
    return {};
  }
}

enum PrepareOrderActionType {
  updatePrice("update_price"),
  replace("replace"),
  reduce("reduce"),
  remove("remove"),
  add("add");

  final String value;

  const PrepareOrderActionType(this.value);
}
