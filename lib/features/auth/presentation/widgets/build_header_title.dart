import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';


class BuildHeaderTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const BuildHeaderTitle({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s20_w500(color: context.colors.black),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 40),
          child: Text(
            subTitle,
            style: AppTextStyle.s16_w500(color: context.colors.blackOpacity),
          ),
        ),
      ],
    );
  }
}
