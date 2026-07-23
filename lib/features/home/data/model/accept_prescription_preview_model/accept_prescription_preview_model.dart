import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/features/home/data/model/order_shared_models/order_shared_models.dart';

part 'accept_prescription_preview_model.freezed.dart';
part 'accept_prescription_preview_model.g.dart';

@freezed
class AcceptPrescriptionPreviewModel with _$AcceptPrescriptionPreviewModel {
  const AcceptPrescriptionPreviewModel._();

  @JsonSerializable(explicitToJson: true)
  factory AcceptPrescriptionPreviewModel({
    required String total,
    required String subtotal,
    required String tax,
    @JsonKey(name: 'order_discounts') required List<OrderDiscountModel> discounts,
  }) = _AcceptPrescriptionPreviewModel;

  factory AcceptPrescriptionPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$AcceptPrescriptionPreviewModelFromJson(json);
}
