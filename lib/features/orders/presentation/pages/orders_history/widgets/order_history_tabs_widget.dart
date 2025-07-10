import 'package:flutter_tdd/core/widgets/app_button.dart';

import 'orders_history_widgets_imports.dart';

class OrderHistoryTabsWidget extends StatelessWidget {
  final OrdersHistoryController controller;
  const OrderHistoryTabsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
        color: context.colors.white,
        border: Border.all(color: context.colors.borderLight),
        borderRadius: Dimens.borderRadius30PX,
      ),
      child: ObsValueConsumer(
        observable: controller.currentTabObs,
        builder: (context, value) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: AppTextButton.minCustom(
                    text: "Completed Orders",
                    onPressed: ()=> controller.switchTab(0),
                    maxHeight: 34,
                    borderRadius: Dimens.borderRadius30PX,
                    bgColor: value == 0
                        ?context.colors.primary
                        :Colors.transparent,
                    txtColor: value == 0
                        ?context.colors.white
                        :context.colors.gray58
                ),
              ),
              Expanded(
                child: AppTextButton.minCustom(
                    text: "Failed Orders",
                    borderRadius: Dimens.borderRadius30PX,
                    maxHeight: 34,
                    onPressed: ()=> controller.switchTab(1),
                    bgColor: value == 1
                        ?context.colors.primary
                        :Colors.transparent,
                    txtColor: value == 1
                        ?context.colors.white
                        :context.colors.gray58
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
