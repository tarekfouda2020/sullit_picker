class LoginParams {
  final String userName;
  final String password;
  final String deviceToken;

  LoginParams({
    required this.userName,
    required this.password,
    required this.deviceToken,
  });

  Map<String, dynamic> toJson() {
    return {
      "username": userName,
      "password": password,
      "device_token": deviceToken,
    };
  }
}
