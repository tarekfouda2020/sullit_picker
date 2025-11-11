
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_imports.dart';


class NewPriceDialogWidget extends StatelessWidget {
  final OrderDetailsModel orderProduct ;
  final OrderDetailsController controller;
  const NewPriceDialogWidget({super.key, required this.orderProduct, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DialogActionWidget(
      description: "is price equal ${orderProduct.getProductPrice}",
      buttonGreenTitle: Translate.of(context).equals,
      buttonRedTitle: Translate.of(context).less_than,
      greenOnTap: () {
        controller.pickItem(orderProduct);
        Navigator.pop(context);
      },
      redOnTap: () => controller.showNewPriceDialog(context, orderProduct),
    );
  }
}
