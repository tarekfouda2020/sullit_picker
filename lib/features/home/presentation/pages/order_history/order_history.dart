
import 'package:flutter_tdd/features/home/presentation/pages/order_history/order_history_controller.dart';

import '../../../../../core/helpers/export.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {


  final OrderHistoryController controller = OrderHistoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
