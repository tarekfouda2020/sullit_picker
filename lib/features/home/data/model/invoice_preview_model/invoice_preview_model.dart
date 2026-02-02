
import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _InvoicePreviewModel;


  factory InvoicePreviewModel.fromJson(Map<String, dynamic> json) =>
      _$InvoicePreviewModelFromJson(json);
}