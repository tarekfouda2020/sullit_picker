
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';

part 'invoice_preview_model.freezed.dart';
part 'invoice_preview_model.g.dart';

@freezed
class InvoicePreviewModel with _$InvoicePreviewModel{
  const InvoicePreviewModel._();
  @JsonSerializable(explicitToJson: true)
  factory InvoicePreviewModel({
  required String total,
  required String subtotal,
  required String tax,
  @JsonKey(name: "coupon_discount") required String couponDiscount,
  @JsonKey(name: "order_discounts") required List<OrderDiscountModel> discounts,
  }) = _InvoicePreviewModel;


  factory InvoicePreviewModel.fromJson(Map<String, dynamic> json) =>
      _$InvoicePreviewModelFromJson(json);
}