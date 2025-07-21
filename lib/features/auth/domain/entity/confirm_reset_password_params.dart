class ConfirmResetPasswordParams {
  final String email;
  final String password;
  final String confirmPassword;
  final String code;

  ConfirmResetPasswordParams({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.code,
  });


Map<String, dynamic> toJson() => {
  "code": code,
  "email": email,
  "password": password,
  "password_confirmation": confirmPassword,
};

}
