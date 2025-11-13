import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';

class PrepareOrderParams {
  final int orderId;
  final List<OrderDetailsModel> currentProductsDetails;
  final List<OrderDetailsModel>? deletedDetails;

  const PrepareOrderParams(
      {required this.orderId,
      required this.currentProductsDetails,
      this.deletedDetails});

  Map<String, dynamic> toJson() {
    final List<OrderDetailsModel> currentDetails = currentProductsDetails;
    final List<OrderDetailsModel> removeData = (deletedDetails ?? []);

    final List<Map<String, dynamic>> currentDetailsJson = currentDetails
        .map((e) {
          /// replaced projects
          if (e.newVariantId != null && e.newVariantId != -1) {
            if (e.newPrice != null && e.newPrice != 0.0) {
              return _actionJson(PrepareOrderActionType.updatePrice, e);
            }
            return _actionJson(PrepareOrderActionType.replace, e);
          }

          /// updated price
          if (e.newPrice != null && e.newPrice != 0.0) {
            return _actionJson(PrepareOrderActionType.updatePrice, e);
          }

        /// added item
          if (e.addedVariantId != null && e.addedVariantId != -1) {
            return _actionJson(PrepareOrderActionType.add, e);
          }
        })
        .where((e) => e != null)
        .cast<Map<String, dynamic>>()
        .toList();

    final List<Map<String, dynamic>> removeDetailsJson = removeData
        .map((e) => _actionJson(PrepareOrderActionType.remove, e))
        .toList();

    final List<Map<String, dynamic>> allDetailsJsons = [
      ...currentDetailsJson,
      ...removeDetailsJson
    ];

    log("======>>>> all data $allDetailsJsons <<<<<<======");

    return {
      if (allDetailsJsons.isNotEmpty) "details": jsonEncode(allDetailsJsons),
    };
  }

  Map<String, dynamic> _actionJson(
      PrepareOrderActionType actionType, OrderDetailsModel data) {
    switch (actionType) {
      case PrepareOrderActionType.updatePrice:
        return {
          "id": data.id,
          "action": "update_price",
          "price": data.newPrice,
          "picker_notes": data.pickerNotes!,
        };
      case PrepareOrderActionType.replace:
        return {
          "id": data.id,
          "action": "replace",
          "new_variant_id": data.newVariantId,
          "picker_notes": data.pickerNotes!
        };
      case PrepareOrderActionType.reduce:
        return {
          "id": data.id,
          "action": "reduce",
          "qty": data.quantity,
          "picker_notes": "replace notes",
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
          "picker_notes": data.pickerNotes!,
        };
    }
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
