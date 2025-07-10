import 'package:flutter_tdd/features/orders/presentation/pages/orders_history/widgets/order_history_card.dart';

import 'orders_history_widgets_imports.dart';

class CompletedOrdersListWidget extends StatelessWidget {
  const CompletedOrdersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
      return const OrderHistoryCardWidget(isFailed: false,);
    },);
  }
}
