import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppLightColors extends AppColors {

  @override
  Color get primary => const Color(0xFFE84144); // Correct red primary from Figma

  @override
  Color get secondary => const Color(0xFF34C759); // Green secondary

  @override
  Color get white => Colors.white;

  @override
  Color get background => const Color(0xFFF6F6F6);

  @override
  Color get appBarColor => const Color(0xFFE84144);

  @override
  Color get black => const Color(0xFF212529);

  @override
  Color get blackOpacity => const Color(0xFF6C757D);

  @override
  Color get greyWhite => const Color(0xFFF8F9FA);

  @override
  Color get disableGray => const Color(0xFFDEE2E6);

  @override
  Color get green => const Color(0xFF34C759);

  @override
  Color get cardBackground => Colors.white;

  @override
  Color get textPrimary => const Color(0xFF212529);

  @override
  Color get textSecondary => const Color(0xFF6C757D);

  @override
  Color get textTertiary => const Color(0xFF9CA3AF);

  @override
  Color get borderColor => const Color(0xFFE9ECEF);

  @override
  Color get borderLight => const Color(0xFFF1F1F1);

  @override
  Color get errorColor => const Color(0xFFE84144);

  @override
  Color get warningColor => const Color(0xFFFF9500);

  @override
  Color get successColor => const Color(0xFF34C759);

  @override
  Color get orangeAccent => const Color(0xFFFF6B35);

  @override
  Color get textLabel => const Color(0xFF374151);

  @override
  Color get textSubtle => const Color(0xFF6B7280);

  @override
  Color get textDark => const Color(0xFF1F2937);

  @override
  Color get inputBorder => const Color(0xFFE5E7EB);

  @override
  Color get hintText => const Color(0xFF9CA3AF);

  @override
  Color get lightBackground => const Color(0xFFFEEAEA);

  @override
  Color get lightPrimary => const Color(0xFFFFC9CA);

  @override
  Color get gray58 => const Color(0xFF898989);

  @override
  Color get darkRose => const Color(0xFFE84144);

  @override
  Color get pink => const Color(0xFFFFE1E2);
}