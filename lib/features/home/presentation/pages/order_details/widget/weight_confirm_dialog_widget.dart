import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'dialog_action_widget.dart';
import 'widgets_imports.dart';

class WeightConfirmDialogWidget extends StatelessWidget {
  final OrderDetailsModel orderProduct;
  final OrderDetailsController controller;
  const WeightConfirmDialogWidget(
      {super.key, required this.orderProduct, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DialogActionWidget(
      description:
          "${Translate.s.is_weight_equals}${controller.getProductWeight(orderProduct)} ${controller.getProductWeightUnit(orderProduct)}",
      // description: "is price equal ${orderProduct.getProductPrice}",
      buttonGreenTitle: Translate.s.equals,
      buttonRedTitle: Translate.s.less_than,
      greenOnTap: () {
        controller.pickItem(orderProduct);
        Navigator.pop(context);
      },
      redOnTap: () => controller.showNewWeightDialog(context, orderProduct),
    );
  }
}
