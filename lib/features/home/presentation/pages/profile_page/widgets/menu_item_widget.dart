import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class MenuItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final String? endTitle;
  final double? endTitleSize;
  final int? iconSpace;
  const MenuItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
     this.iconSpace,
     this.endTitleSize,
    this.endTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        height: 50,
        padding: const EdgeInsetsDirectional.only(start: 22, end: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius8PX,
          border: Border.all(color: context.colors.borderLight)
        ),
        child : Row(
          children: [
            SvgPicture.asset(icon,colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),),
            Gaps.hGap15,
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.s14_w700(color: context.colors.black),
              ),
            ),
            if(endTitle != null)
              Text(endTitle!,
                style: AppTextStyle.s14_w700(color: context.colors.black).copyWith(
                  fontSize: endTitleSize
                ),
              ),
            Gaps.hGap(iconSpace ?? 25),
            Icon(
              Icons.arrow_forward_ios,
              color: context.colors.black,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
} 