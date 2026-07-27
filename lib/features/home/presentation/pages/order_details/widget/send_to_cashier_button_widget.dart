import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';

class SendToCashierButtonWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const SendToCashierButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
      text: Translate.s.send_to_cashier,
      onPressed: () => controller.sendToCashier(),
      textSize: 18,
      txtColor: controller.isAllProductsPicked || !controller.showActions
          ? context.colors.white
          : context.colors.white.withAlpha(126),
      bgColor: controller.isAllProductsPicked || !controller.showActions
          ? context.colors.appGreen
          : context.colors.appGreen.withAlpha(126),
      maxHeight: 50,
    );
  }
}
