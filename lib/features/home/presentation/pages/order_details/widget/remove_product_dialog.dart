import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';
import 'dialog_action_widget.dart';

class RemoveProductDialog extends StatelessWidget {
  final OrderDetailsController controller;
  final int productId;
  final BaseBloc<bool> loadingCubit;

  const RemoveProductDialog({
    super.key,
    required this.controller,
    required this.productId,
    required this.loadingCubit,
  });

  @override
  Widget build(BuildContext context) {
    return DialogActionWidget(
      description: Translate.of(context).user_no_replace_access,
      buttonGreenTitle: Translate.of(context).yes_remove,
      greenOnTap: () => controller.deleteReasonDialog(context, productId,loadingCubit),
    );
  }
}
