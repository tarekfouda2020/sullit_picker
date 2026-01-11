import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/order_history_product_item_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/section_title_widget.dart';

class OrderHistoryProductsWidget extends StatelessWidget {
  final List<OrderDetailsModel> products;

  const OrderHistoryProductsWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleWidget(title: Translate.s.order_items),
      Gaps.vGap16,
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             ...List.generate(products.length, (index) {
               return OrderHistoryProductItemWidget(item: products[index]);
             },),

            ],
          ),
        ),
      ],
    );
  }
}
