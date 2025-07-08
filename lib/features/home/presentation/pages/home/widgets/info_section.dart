import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/home_sections_title_widget.dart';
import 'package:flutter_tdd/res.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String content;
  final String iconPath;
  final bool isPaymentLink;
  final void Function()? sendPaymentLink;

  const InfoSection({
    super.key,
    required this.title,
    required this.content,
    required this.iconPath,
     this.isPaymentLink = false,
     this.sendPaymentLink,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionsTitleWidget(title: title),
        Gaps.vGap6,
        Container(
          height: Dimens.dp44,
          padding: const EdgeInsetsDirectional.fromSTEB(18, 12, 14, 12) ,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius8PX,
            border: Border.all(color: context.colors.inputBorder)
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                iconPath,
                width: 20,
                height: 20,
              ),
              Gaps.hGap12,
              Expanded(
                child: Text(
                  content,
                  style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
                ),
              ),
              if(isPaymentLink)
              GestureDetector(
                onTap: sendPaymentLink,
                child: Row(
                  children: [
                    Text("Send Payment Link",
                    style: AppTextStyle.s12_w700(color: context.colors.primary),
                    ),
                   Gaps.hGap5,
                   SvgPicture.asset(Res.arrowForward)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
