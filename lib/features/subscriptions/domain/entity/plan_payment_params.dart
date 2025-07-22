
class PlanPaymentParams {

  final String paymentMethod;
  bool showLoading;

  PlanPaymentParams({required this.paymentMethod,this.showLoading = false});

  Map<String, dynamic> toJson() => {
    "payment_method": paymentMethod
  };
}