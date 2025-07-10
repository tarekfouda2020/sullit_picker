import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/theme/colors/app_dark_colors.dart';
import 'package:flutter_tdd/core/theme/colors/app_light_colors.dart';

abstract class AppColors {

  static final AppDarkColors _dark = AppDarkColors();
  static final AppLightColors _light = AppLightColors();

  static AppColors get fixedColors => _light;

  static const Color snackBarGreenSuccess = Color(0xff03A89E);
  static const Color snackBarRedError = Color(0xffBF1C00);
  static const Color snackBarYellowAlert = Color(0xfffea632);

  static AppColors get noContextInstance =>
      getIt.get<GlobalContext>().context().read<DeviceCubit>().state.model.themeMode == AdaptiveThemeMode.dark
          ? _dark
          : _light;

  static AppColors of(BuildContext context) =>
      context.read<DeviceCubit>().state.model.themeMode == AdaptiveThemeMode.dark ? _dark : _light;


  Color get primary;

  Color get secondary;

  Color get greyWhite;

  Color get blackOpacity;

  Color get appBarColor;

  Color get white;

  Color get black;

  Color get green;

  Color get background;

  Color get disableGray;

  // New colors for driver app
  Color get cardBackground;

  Color get textPrimary;

  Color get textSecondary;

  Color get textTertiary;

  Color get borderColor;

  Color get borderLight; // For light borders (0xFFF1F1F1)

  Color get lightBackground; // For light backgrounds like notifications (0xFFFEEAEA)

  Color get errorColor;

  Color get warningColor;

  Color get successColor;

  Color get orangeAccent;

  Color get lightPrimary;

  Color get gray58;

  // Form and UI colors
  Color get textLabel; // For form labels (0xFF374151)
  
  Color get textSubtle; // For subtle text (0xFF6B7280)
  
  Color get textDark; // For dark titles (0xFF1F2937)
  
  Color get inputBorder; // For input borders (0xFFE5E7EB)
  
  Color get hintText; // For hint text and icons (0xFF9CA3AF)

  Color get darkRose;

  Color get pink;

  Color get stone;

  Color get darkPrimary;

  Color get gold;

  Color get softRose;

  Color get gray3;

  Color get red;

}