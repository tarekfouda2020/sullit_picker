import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class TotalAmountWidget extends StatelessWidget {
  const TotalAmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${Translate.s.total} : 394 AED',
      style: AppTextStyle.s18_w700(color: context.colors.primary),
    );
  }
} 