import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';

class PrescriptionSearchResultItemWidget extends StatelessWidget {
  final SearchBarcodeModel item;
  final VoidCallback onTap;

  const PrescriptionSearchResultItemWidget({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius10PX,
        ),
        child: Row(
          children: [
            CachedImage(
              height: 56,
              width: 56,
              url: item.thumbnailImage,
              haveRadius: false,
              boxShape: BoxShape.circle,
            ),
            Gaps.hGap12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.s14_w600(color: context.colors.black).copyWith(
                      height: 1.3
                    ),
                  ),
                  Gaps.vGap4,
                  Text(
                    item.variant.mainPrice,
                    style: AppTextStyle.s13_w400(color: context.colors.primary),
                  ).withDirhamSymbol(),
                ],
              ),
            ),
            Gaps.hGap8,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: context.colors.primary.withValues(alpha: 0.1),
                borderRadius: Dimens.borderRadius8PX,
              ),
              child: Icon(
                CupertinoIcons.add,
                size: 16,
                color: context.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
