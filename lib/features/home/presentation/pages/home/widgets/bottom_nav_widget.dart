import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';

import 'home_widgets_imports.dart';

class BottomNavWidget extends StatelessWidget {
  final HomeController controller;

  const BottomNavWidget({super.key, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.orderStatusObs,
      builder: (context,status) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: status != OrderStatusEnum.start,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: AppTextButton.maxCustom(
                    onPressed: () => controller.showReportSheet(context),
                    text: "Report a problem",
                    bgColor: context.colors.white,
                    txtColor: context.colors.primary,
                    borderColor: context.colors.primary,
                  ),
                ),
              ),
              ActionButtonWidget(text: _buttonText(status), onTap: () =>_onTap(status) ),
              Gaps.vGap10,
            ],
          ),
        );
      }
    );
  }

  // Widget _currentButton(OrderStatusEnum status) {
  //   switch ( status) {
  //     case OrderStatusEnum.start:
  //       return ActionButtonWidget(
  //           text: "Start Delivering", onTap: () => controller.updateOrderStatus(OrderStatusEnum.arrived)
  //       );
  //     case OrderStatusEnum.arrived:
  //       return ActionButtonWidget(
  //           text: "Arrived",  onTap: () => controller.updateOrderStatus(OrderStatusEnum.delivered)
  //       );
  //     case OrderStatusEnum.delivered:
  //       return ActionButtonWidget(
  //           text: "Delivered", onTap: () => controller.updateOrderStatus(OrderStatusEnum.start)
  //       );
  //       }
  // }

  String _buttonText(OrderStatusEnum status) {
    switch ( status) {
      case OrderStatusEnum.start:
        return "Start Delivering";
      case OrderStatusEnum.arrived:
        return "Arrived";
      case OrderStatusEnum.delivered:
        return "Delivered";
    }
  }

  void _onTap(OrderStatusEnum status) {
    switch (status) {
      case OrderStatusEnum.start:
        controller.updateOrderStatus(OrderStatusEnum.arrived);
      case OrderStatusEnum.arrived:
         controller.updateOrderStatus(OrderStatusEnum.delivered);
      case OrderStatusEnum.delivered:
         controller.updateOrderStatus(OrderStatusEnum.start);
    }
  }
}
