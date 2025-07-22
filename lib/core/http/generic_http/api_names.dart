import 'package:flutter_tdd/core/constants/app_config.dart';

class ApiNames{
  static String baseUrl = AppConfig.instance.baseUrl;

  // auth routes
  static const String login = "login";
  static const String refreshToken = "auth";
  static const String savePublicKey = "users/";
  static const String updateUser = "users/";

  static const String register = "register";
  static const String workTypes = "work-types";
  static const String verifyPhone = "register/send-phone-verification";
  static const String verifyEmail = "register/send-email-verification";
  static const String confirmResetPassword = "password/reset";

  static const String activeAccount = "otp/verify";
  static const String resendCode = "ResendCode";
  static const String switchNotify = "SwitchNotify";
  static const String forgetPassword = "cabaf46ee69d7b8445a5d791";
  static const String resetPassword = "A2q4mG84Z9rE2B38In4HALSWTwt9eQ5Slzq56Cod";
  static const String passwordForgot = "password/forgot";
  static const String logout = "logout";


  /// subscriptions
  static const String paymentMethods = "payment-methods";
  static const String subscriptionPlan = "subscription/plan";
  static const String subscribe = "subscription/subscribe";
  static const String currentSubscription = "subscription/current";

  ///profile
  static const String profile = "profile";





}