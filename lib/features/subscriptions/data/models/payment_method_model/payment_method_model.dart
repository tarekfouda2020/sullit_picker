
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_model.freezed.dart';
part 'payment_method_model.g.dart';

@unfreezed
@immutable
class PaymentMethodModel with _$PaymentMethodModel{
  const PaymentMethodModel._();
  @JsonSerializable(explicitToJson: true)
  factory PaymentMethodModel({
    @JsonKey(name: "payment_type") required String paymentType,
    @JsonKey(name: "payment_type_key") required String paymentTypeKey,
    @JsonKey(name: "offline_payment_id") required int offLinePaymentId,
    @JsonKey(name: "is_selected",defaultValue: false)  bool? isSelected,
   required String image,
   required String name,
   required String title,
   required String details,
  }) = _PaymentMethodModel;


  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodModelFromJson(json);
}