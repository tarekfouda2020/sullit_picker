import 'package:flutter/material.dart';

abstract class AppTheme {
  static var fontFamily = 'NotoSans';

  ThemeData get theme;

  // TextTheme get textTheme;

  ColorScheme get colorScheme;
}
