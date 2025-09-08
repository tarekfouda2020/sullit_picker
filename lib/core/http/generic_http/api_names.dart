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
  static  String updatePassword = "${appApi}update-password?_method=patch";



  static  String passwordForgot = "${appApi}password/forgot";
  static  String logout = "${appApi}logout";
  static  String freelancerInstructions = "${appApi}freelancer-instructions";
  static  String appInstructionsAgree = "${appApi}app-instructions/agree";


  /// subscriptions
  static  String paymentMethods = "${appApi}payment-methods";
  static  String subscriptionPlan = "${appApi}subscription/plan";
  static  String subscribe = "${appApi}subscription/subscribe";
  static  String currentSubscription = "${appApi}subscription/current";


  ///orders
  static  String stores = "${appApi}stores";
  static  String statistics = "${appApi}statistics/orders";
  static  String currentOrder = "${appApi}orders/current";
  static  String updateOrderStatus(int id) => "${appApi}orders/$id/status";
  static  String reportReasons = "${appApi}orders/report/reasons";
  static  String completedOrders = "${appApi}orders/delivered";
  static  String failedOrders = "${appApi}orders/canceled";
  static  String newOrders = "${appApi}orders/new";

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

  ///wallet
  static  String transactions = "${appApi}wallet/transactions";
  static  String walletRecharge = "${appApi}wallet/recharge";


  /// notifications
static  String notifications = "${appApi}notifications";






}