import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_imports.dart';

import '../../../../../../core/helpers/export.dart';

class ReturnItemButtonWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel data;
  const ReturnItemButtonWidget({super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
      text:  Translate.s.return_key ,
      bgColor:  context.colors.primary,
      txtColor:  context.colors.white,
      textSize: 16,
      maxHeight: 40,
      onPressed: () => controller.returnPickedItem(context,data),
      // onPressed: () => controller.pickItem(data),
    );
  }
}
