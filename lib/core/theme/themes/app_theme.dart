import 'package:flutter/material.dart';

abstract class AppTheme {
  static var fontFamily = 'OpenSans';

  static var dirhamFontFamily = "dirhamicon";

  ThemeData get theme;

  // TextTheme get textTheme;

  ColorScheme get colorScheme;
}
