import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';

import '../constants/dimens.dart';
import 'CachedImage.dart';

class BottomSheetItemWidget extends StatelessWidget {
  final void Function() onSelect;
  final bool isSelected;
  final String title;
  final String image;
  final BoxFit? fit;
  const BottomSheetItemWidget({
    super.key,
    required this.onSelect,
    required this.isSelected,
    required this.title,
    required this.image,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: isSelected ? context.colors.primary.withValues(alpha: 0.2) : context.colors.white,
            borderRadius: Dimens.borderRadius20PX,
            border:
                Border.all(color: isSelected ? context.colors.primary : context.colors.gray58.withValues(alpha: 0.8))),
        child: Row(
          children: [
            CachedImage(
              url: image,
              width: 40,
              height: 40,
              haveRadius: false,
              boxShape: BoxShape.circle,
              fit: fit ?? BoxFit.contain,
            ),
            Gaps.hGap15,
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
            ),
            CustomRadioWidget(
              selected: isSelected,
            )
          ],
        ),
      ),
    );
  }
}
