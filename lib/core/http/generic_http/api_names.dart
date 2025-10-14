import 'package:flutter_tdd/core/constants/app_config.dart';

class ApiNames{

  static String baseUrl = AppConfig.instance.baseUrl;
  static String appApi = AppConfig.instance.appApi;

  // auth routes
  static  String login = "${appApi}login";
  static  String refreshToken = "${appApi}auth";
  static  String updateUser = "${appApi}users/";


  static  String confirmResetPassword = "${appApi}password/reset";

  static  String activeAccount = "${appApi}otp/verify";
  static  String resendCode = "${appApi}ResendCode";
  static  String switchNotify = "${appApi}SwitchNotify";
  static  String resetPassword = "${appApi}A2q4mG84Z9rE2B38In4HALSWTwt9eQ5Slzq56Cod";
  static  String privacyPolicy = "${appApi}privacy-policy";
  static  String updatePassword = "${appApi}update-password?_method=patch";



  static const String passwordForgot = "password/forgot";
  static const String logout = "logout";
  static const String freelancerInstructions = "freelancer-instructions";
  static const String appInstructionsAgree = "app-instructions/agree";




  ///orders
  static  String currentOrder = "${appApi}orders/current";
  static  String updateOrderStatus(int id) => "${appApi}orders/$id/status";

  ///home
  static  String profile = "profile";
  static  String updateProfileImage = "update-avatar?_method=patch";
  static  String toggleAvailability = "toggle-availability?_method=patch";

  ///general
  static  const String socials = "socials";
  static  String contactUs = "${appApi}contact-us";
  static  String terms = "${appApi}terms";
  static const String getLanguages = "settings/languages";

  ///wallet
  static  String transactions = "${appApi}wallet/transactions";
  static  String walletRecharge = "${appApi}wallet/recharge";


  /// notifications
static  String notifications = "notifications";






}