import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';

class OrderHistoryProductItemWidget extends StatelessWidget {
  final OrderDetailsModel item;

  const OrderHistoryProductItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.borderColor),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImage(
                url: item.product?.thumbnailImage ?? "",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(8),
              ),
              Gaps.hGap12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.product?.name ?? "",
                      style: AppTextStyle.s14_w500(color: context.colors.black),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                   Gaps.vGap8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${item.unitPrice} ", // Assuming currency or getting from config
                          style: AppTextStyle.s16_w600(color: context.colors.primary),
                        ).withDirhamSymbol(),
                        Text(
                          "${Translate.s.qnt} : ${item.quantity}",
                          style: AppTextStyle.s14_w500(color: context.colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
