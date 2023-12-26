
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppLightColors extends AppColors {


  @override
  Color get primary => const Color(0xFFF9656B);

  @override
  Color get secondary => const Color(0xff30e3a0);

  @override
  Color get white => Colors.white;

  @override
  Color get background => Colors.white;

  @override
  Color get appBarColor => const Color(0xFFF9656B);

  @override
  Color get black => Colors.black;

  @override
  Color get blackOpacity => Colors.black45;

  @override
  Color get greyWhite => Colors.grey.withOpacity(.2);

  @override
  Color get disableGray=> const Color(0xFFCBCBCB);

  @override
  Color get green=>  Colors.green;

}