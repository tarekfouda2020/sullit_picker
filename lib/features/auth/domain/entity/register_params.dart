import 'dart:io';

class RegisterParams {
  final String name;
  final String email;
  final String phone;
  final String countryCode;
  final int phoneVerificationCode;
  final int emailVerificationCode;
  final String workType;
  final File idImageFront;
  final File idImageBack;
  final File licenseImageFront;
  final File licenseImageBack;
  final String mapDesc;
   double? lat;
   double? lng;
   int? coverageArea;
  final String password;
  final String confirmPassword;

  RegisterParams({
    required this.name,
    required this.email,
    required this.phone,
    required this.countryCode,
    required this.phoneVerificationCode,
    required this.emailVerificationCode,
    required this.workType,
    required this.idImageFront,
    required this.idImageBack,
    required this.licenseImageFront,
    required this.licenseImageBack,
    required this.mapDesc,
     this.lat,
     this.lng,
     this.coverageArea,
    required this.password,
    required this.confirmPassword,
  });



  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone": phone,
    "country_code": countryCode,
    "phone_verification_code": phoneVerificationCode,
    "email_verification_code": emailVerificationCode,
    "work_type": workType,
    "id_image_front": idImageFront,
    "id_image_back": idImageBack,
    "license_image_front": licenseImageFront,
    "license_image_back": licenseImageBack,
    "map_desc": mapDesc,
    if(lat != null)"lat": lat,
    if(lng != null)"lng": lng,
    if(coverageArea != null)"coverage_radius_km": coverageArea,
    "password": password,
    "password_confirmation": confirmPassword
  };


}
