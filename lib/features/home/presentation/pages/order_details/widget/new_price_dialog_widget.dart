import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_imports.dart';

class NewPriceDialogWidget extends StatelessWidget {
  final OrderDetailsModel orderProduct;

  final OrderDetailsController controller;
  final bool pickAll;

  const NewPriceDialogWidget(
      {super.key,
      required this.orderProduct,
      required this.controller,
      this.pickAll = false});

  @override
  Widget build(BuildContext context) {
    return DialogActionWidget(
      description: "is price equal ${price()}",
      buttonGreenTitle: Translate.of(context).equals,
      buttonRedTitle: Translate.of(context).less_than,
      greenOnTap: () {
        controller.pickItem(orderProduct, pickedAll: pickAll);
        Navigator.pop(context);
      },
      redOnTap: () => controller.showNewPriceDialog(context, orderProduct, pickAll: pickAll),
    );
  }

  String price() {
    if (pickAll) {
      return orderProduct.price;
    } else {
      return orderProduct.unitPrice;
    }
  }
}
