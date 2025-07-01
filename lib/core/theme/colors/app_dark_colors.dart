import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppDarkColors extends AppColors {

  @override
  Color get primary => const Color(0xFFE84144);

  @override
  Color get secondary => const Color(0xFF34C759);

  @override
  Color get white => const Color(0xFF1C1C1E);

  @override
  Color get appBarColor => const Color(0xFFE84144);

  @override
  Color get black => Colors.white;

  @override
  Color get background => const Color(0xFF000000);

  @override
  Color get blackOpacity => const Color(0xFF8E8E93);

  @override
  Color get greyWhite => const Color(0xFF2C2C2E);

  @override
  Color get disableGray => const Color(0xFF48484A);

  @override
  Color get green => const Color(0xFF34C759);

  @override
  Color get cardBackground => const Color(0xFF1C1C1E);

  @override
  Color get textPrimary => Colors.white;

  @override
  Color get textSecondary => const Color(0xFF8E8E93);

  @override
  Color get textTertiary => const Color(0xFF6B7280);

  @override
  Color get borderColor => const Color(0xFF495057);

  @override
  Color get borderLight => const Color(0xFF495057); // Darker equivalent for dark theme

  @override
  Color get lightBackground => const Color(0xFF2C2C2E); // Darker equivalent for dark theme

  @override
  Color get errorColor => const Color(0xFFE84144);

  @override
  Color get warningColor => const Color(0xFFFF9F0A);

  @override
  Color get successColor => const Color(0xFF34C759);

  @override
  Color get orangeAccent => const Color(0xFFFF6B35);

  @override
  Color get textLabel => const Color(0xFFE5E7EB); // Light gray for dark theme

  @override
  Color get textSubtle => const Color(0xFF9CA3AF); // Medium gray for dark theme

  @override
  Color get textDark => const Color(0xFFFFFFFF); // White for dark theme

  @override
  Color get inputBorder => const Color(0xFF374151); // Darker border for dark theme

  @override
  Color get hintText => const Color(0xFF6B7280); // Darker hint text for dark theme
}