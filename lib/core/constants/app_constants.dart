import 'package:flutter/material.dart';

class ApplicationConstants {
  static const keyLanguage = 'language';
  static const keyToken = 'token';
  static const headerBearer = 'bearer';
  static const maxFileCount = 500;


// Languages
  static const langEN = 'en';
  static const langAR = 'ar';

  /// Pagination
  static const paginationLimit = 16;
  static const paginationSkip = 0;

  static const logoVarName = 'icon_g';
  static String logoPathPng = "assets/images/${ApplicationConstants.logoVarName}.png";

  static BoxConstraints get textFieldConstrains =>
      const BoxConstraints(minHeight: 50, maxHeight: 50);

  static BoxConstraints? fromHeight(double? height) =>
      height!=null?BoxConstraints(minHeight: height, maxHeight: height):null;
}
