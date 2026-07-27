import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';

class PrescriptionSearchHintWidget extends StatelessWidget {
  final VoidCallback onTap;

  const PrescriptionSearchHintWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: context.colors.borderLight),
        ),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.search,
              size: 18,
              color: context.colors.simiGray,
            ),
            Gaps.hGap10,
            Text(
              Translate.s.search_products,
              style: AppTextStyle.s14_w400(color: context.colors.simiGray),
            ),
          ],
        ),
      ),
    );
  }
}
