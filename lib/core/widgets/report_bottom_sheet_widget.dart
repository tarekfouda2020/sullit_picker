import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class CustomReportBottomSheetItemWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final void Function() onTap;
  const CustomReportBottomSheetItemWidget({super.key, required this.title, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        padding: Dimens.paddingStart31End27Px,
        decoration: BoxDecoration(
            color: isSelected ? context.colors.lightPrimary : context.colors.white,
            borderRadius: Dimens.borderRadius30PX,
            border: Border.all(color: isSelected ? context.colors.primary : context.colors.borderLight)
        ),
        child:  Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.s14_w400(color: isSelected ? context.colors.primary : context.colors.stone),
              ),
            ),
            if (isSelected)
              SvgPicture.asset(
                Res.checkIcon,
                width: 12,
                height: 9,
              )
          ],
        ),
      ),
    );
  }
}
