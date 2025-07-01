import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '9:41',
            style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
          ),
          Row(
            children: [
              SvgPicture.asset(Res.iconMiddleRight, width: 17, height: 11),
              const SizedBox(width: 5),
              SvgPicture.asset(Res.iconRight, width: 15, height: 11),
              const SizedBox(width: 5),
              SvgPicture.asset(Res.iconFarRight, width: 24, height: 11),
            ],
          ),
        ],
      ),
    );
  }
}
