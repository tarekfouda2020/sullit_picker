class LoginParams {
  final String password;
  final String email;
  final String deviceToken;

  LoginParams({
    required this.password,
    required this.email,
    required this.deviceToken,
  });

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
      "device_token": deviceToken,
    };
  }


}