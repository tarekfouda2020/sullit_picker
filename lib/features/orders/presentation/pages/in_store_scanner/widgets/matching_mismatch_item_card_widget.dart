part of '../in_store_scanner_imports.dart';

class MatchingMismatchItemCardWidget extends StatelessWidget {
  final MatchingProductItem item;

  const MatchingMismatchItemCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: Dimens.paddingAll16Px,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        boxShadow: [
          BoxShadow(
            color: context.colors.black.withValues(alpha: Dimens.shadowOpacity),
            blurRadius: Dimens.shadowBlurRadius,
            offset: Dimens.shadowOffset,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: Dimens.borderRadius8PX,
            child: item.imageUrl.startsWith('assets/')
                ? Image.asset(
                    item.imageUrl,
                    width: Dimens.dp60,
                    height: Dimens.dp60,
                    fit: BoxFit.cover,
                  )
                : CachedImage(
                    url: item.imageUrl,
                    width: Dimens.dp60,
                    height: Dimens.dp60,
                    fit: BoxFit.cover,
                    borderRadius: Dimens.borderRadius8PX,
                    bgColor: context.colors.greyWhite,
                  ),
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
                  style: AppTextStyle.s14_w600(color: context.colors.black)
                      .copyWith(height: 1.2),
                ),
                Gaps.vGap8,
                Container(
                  padding: Dimens.paddingH16V10PX,
                  decoration: BoxDecoration(
                    color: context.colors.greyWhite,
                    borderRadius: Dimens.borderRadius30PX,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        Translate.s.item_price,
                        style: AppTextStyle.s12_w400(
                          color: context.colors.textSecondary,
                        ),
                      ),
                      DirhamPrice(
                        amount: item.price,
                        color: context.colors.primary,
                        textStyle: AppTextStyle.s12_w700(
                          color: context.colors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                Gaps.vGap8,
                Text.rich(
                  TextSpan(
                    text: Translate.s.barcode,
                    style: AppTextStyle.s12_w400(color: context.colors.black),
                    children: [
                      TextSpan(
                        text: item.barcode,
                        style: AppTextStyle.s12_w700(
                          color: context.colors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
