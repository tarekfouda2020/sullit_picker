import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class UnpaidBadge extends StatelessWidget {
  const UnpaidBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 186,
        height: 67,
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            Translate.s.unpaid,
            style: AppTextStyle.s16_w800(color: context.colors.white),
          ),
        ),
      ),
    );
  }
}
