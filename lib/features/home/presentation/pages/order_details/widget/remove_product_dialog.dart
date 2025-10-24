
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';
import 'dialog_action_widget.dart';

class RemoveProductDialog extends StatelessWidget {
  final OrderDetailsController controller;
  final int productId;
  const RemoveProductDialog({super.key, required this.controller, required this.productId});

  @override
  Widget build(BuildContext context) {
    return DialogActionWidget(
      description:
      'User didn’t give access to replace the product , you can just remove it from order',
      buttonGreenTitle: 'Yes Remove',
      greenOnTap: () => controller.deleteProduct(context,productId),
    );
  }
}
