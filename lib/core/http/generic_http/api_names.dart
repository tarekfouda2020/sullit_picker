import 'package:flutter_tdd/core/constants/app_config.dart';

class ApiNames{
  static String baseUrl = AppConfig.instance.baseUrl;
  static String appApi = AppConfig.instance.appApi;

  // auth routes
  static  String login = "${appApi}login";
  static  String refreshToken = "${appApi}auth";
  static  String savePublicKey = "${appApi}users/";
  static  String updateUser = "${appApi}users/";

  static  String register = "${appApi}register";
  static  String workTypes = "${appApi}work-types";
  static  String verifyPhone = "${appApi}register/send-phone-verification";
  static  String verifyEmail = "${appApi}register/send-email-verification";
  static  String confirmResetPassword = "${appApi}password/reset";

  static  String activeAccount = "${appApi}otp/verify";
  static  String resendCode = "${appApi}ResendCode";
  static  String switchNotify = "${appApi}SwitchNotify";
  static  String resetPassword = "${appApi}A2q4mG84Z9rE2B38In4HALSWTwt9eQ5Slzq56Cod";
  static  String privacyPolicy = "${appApi}privacy-policy";
  static  String updatePassword = "u${appApi}pdate-password?_method=patch";



  static  String passwordForgot = "${appApi}password/forgot";
  static  String logout = "${appApi}logout";


  /// subscriptions
  static  String paymentMethods = "${appApi}payment-methods";
  static  String subscriptionPlan = "${appApi}subscription/plan";
  static  String subscribe = "${appApi}subscription/subscribe";
  static  String currentSubscription = "${appApi}subscription/current";

  ///home
  static  String profile = "${appApi}profile";
  static  String updateProfileImage = "${appApi}update-avatar?_method=patch";
  static  String toggleAvailability = "${appApi}toggle-availability?_method=patch";

  ///general
  static  const String socials = "socials";
  static  String updateCoverage = "${appApi}update-coverage?_method=patch";
  static  String contactUs = "${appApi}contact-us";
  static  String terms = "${appApi}terms";
  static const String getLanguages = "settings/languages";






}