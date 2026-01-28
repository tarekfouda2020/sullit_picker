import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/domain/entity/order_display_item.dart';

import '../../order_details/order_details_imports.dart';

class OrderHistoryProductItemWidget extends StatelessWidget {
  final OrderDisplayItem item;

  const OrderHistoryProductItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colors.borderLight.withOpacity(0.5)),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: item.current?.product?.thumbnailImage ?? "",
            height: 52,
            width: 52,
            fit: BoxFit.contain,
            borderRadius: BorderRadius.circular(8),
          ),
          Gaps.hGap12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        item.name,
                        style: AppTextStyle.s14_w600(color: context.colors.black).copyWith(
                          height: 1.3
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if(item.history?.actionLabel != null && item.history?.actionLabel.isNotEmpty == true)
                    Text(item.history!.actionLabel,
                    style: AppTextStyle.s12_w500(color: context.colors.primary),
                    )
                  ],
                ),
                Gaps.vGap8,
                Row(
                  children: [
                    Text(
                      "${item.unitPrice} ",
                      style: AppTextStyle.s18_w500(color: context.colors.primary), // assuming primary is red here
                    ).withDirhamSymbol(),
                    if (isEdited && item.isPriceChanged)...[
                      Gaps.hGap16,
                      Text(
                        "Edited - ",
                        style: AppTextStyle.s12_w500(
                            color: context.colors.textColor.withOpacity(0.6)
                        ),
                      ),
                      Text(
                        item.history?.newPrice ?? "",
                        style: AppTextStyle.s14_w500(
                          color: context.colors.textColor.withOpacity(0.6),
                        ).copyWith(decoration: TextDecoration.lineThrough,
                        decorationColor: context.colors.textColor
                        ),
                      ).withDirhamSymbol(),
                    ],
                    const Spacer(),
                    if(isEdited && item.isQntReduce)
                    Text(
                      "${Translate.s.qnt} : ${item.history?.oldQuantity ?? ""}",
                      style: AppTextStyle.s14_w400(color: context.colors.primary).copyWith(
                          decoration: TextDecoration.lineThrough,
                        decorationColor: context.colors.primary
                      ),
                    ),
                    Gaps.hGap6,
                    Text(
                      "${Translate.s.qnt} : ${item.qnt}",
                      style: AppTextStyle.s14_w400(color: context.colors.black),
                    ),
                  ],
                ),
                if (isEdited) ...[
                  Gaps.vGap8,
                  Text(
                    "Reason : ${item.history?.notes}",
                    style: AppTextStyle.s14_w400(color: context.colors.textColor),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool get isEdited => item.history!=null;

}
