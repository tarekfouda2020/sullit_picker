import 'package:flutter/material.dart';

class AppConfig {

  AppConfig._();
  static AppConfig instance = AppConfig._();

  String get defaultLanguage => 'en';

  String get baseUrl => const String.fromEnvironment('APP_BASE_URL');
  String get appApi => const String.fromEnvironment('APP_API');
  String get appId => const String.fromEnvironment('APP_ID');
  String get iosAppId => '6754638042';

  static BoxConstraints get textFieldConstrains =>
      const BoxConstraints(minHeight: 50, maxHeight: 50);

  static BoxConstraints? fromHeight(double? height) =>
      height!=null?BoxConstraints(minHeight: height, maxHeight: height):null;
}