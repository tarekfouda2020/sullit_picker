import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
class HintText extends StatelessWidget {
  final String hintText;
  const HintText({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Text(
        hintText,
        style: AppTextStyle.s14_w400(color: context.colors.blackOpacity)
    );
  }
}
