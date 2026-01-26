import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/order_history_product_item_widget.dart';

import '../../../../domain/entity/order_display_item.dart';

class OrderHistoryProductsWidget extends StatelessWidget {
  final List<OrderDisplayItem> products;
  const OrderHistoryProductsWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight, width: 1.3),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            color: context.colors.catCardColor,
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: AppTextStyle.s18_w400(color: context.colors.black),
                  children: [
                    TextSpan(text: '${Translate.s.no_of_items} : ',
                    style: AppTextStyle.s16_w300(color: context.colors.black)
                    ),
                    TextSpan(
                      text: '$totalItems',
                      style: AppTextStyle.s20_w700(color: context.colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: products
                  .map((item) => OrderHistoryProductItemWidget(item: item))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  int get totalItems => products.fold(0, (sum, item) => sum + (item.current?.quantity ?? 0));


}
