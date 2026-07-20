import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_item_widget.dart';
import 'widgets_imports.dart';

class PickCategoryWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderModel order;
  const PickCategoryWidget({super.key, required this.controller, required this.order});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: order.ordersDetails!.length,
        itemBuilder: (context, index) {
          return ;
        },
      ),
    );
  }
}
