class ChargeWalletParams {
  final String amount;
  final String paymentKey;

  ChargeWalletParams({
    required this.amount,
    required this.paymentKey,
  });


  Map<String, dynamic> toJson() => {
    "amount": amount,
    "payment_option": paymentKey,
  };

}