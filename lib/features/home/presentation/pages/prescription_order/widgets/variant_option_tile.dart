import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';

import '../../../../../../core/helpers/export.dart';

class VariantOptionTile extends StatelessWidget {
  final VariantModel variant;
  final VoidCallback onTap;

  const VariantOptionTile({required this.variant, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final bool selected = variant.isSelected == true;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? context.colors.background : context.colors.white,
          borderRadius: Dimens.borderRadius10PX,
          border: Border.all(
            color: selected ? context.colors.primary : context.colors.disableGray,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    variant.name,
                    style: AppTextStyle.s14_w600(color: context.colors.black),
                  ),
                  Text(
                    variant.options,
                    style:
                        AppTextStyle.s12_w300(color: context.colors.simiGray),
                  ),
                ],
              ),
            ),
            Icon(
              selected
                  ? CupertinoIcons.checkmark_circle_fill
                  : CupertinoIcons.circle,
              color: selected ? context.colors.primary : context.colors.simiGray,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
