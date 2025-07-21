class VerifyParams {
  final String email;
  final String code;
  final String phone;

  VerifyParams({
    this.email = "",
    this.code = "",
    this.phone = "",
  });

  Map<String, dynamic> phoneToJson() => {"country_code": code, "phone": phone};

  Map<String, dynamic> emailToJson() => {"email": email};
}
