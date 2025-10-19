import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_item_widget.dart';
import 'widgets_imports.dart';

class PickCategoryWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderItem data;
  const PickCategoryWidget({super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: Dimens.paddingH20Px,
        itemCount: data.totalItems,
        itemBuilder: (context, index) {
          var item = data.ordersDetails![index];
          return PickItemWidget(
            data: item,
            controller: controller,
            status: data.status,
            canReplaced: data.allowReplacement ,
            onPressed: () => controller.showWeightDialog(context)
          );
        },
      ),
    );
  }
}
