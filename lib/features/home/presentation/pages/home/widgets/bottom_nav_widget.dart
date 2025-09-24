import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/orders/data/enum/order_status.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';

import 'home_widgets_imports.dart';

class BottomNavWidget extends StatelessWidget {
  final HomeController controller;
  final OrderModel model;
  const BottomNavWidget({
    super.key,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: model.isAssigned == false && model.isPending == false,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: AppTextButton.maxCustom(
                onPressed: () => controller.showReportSheet(context),
                text: Translate.of(context).report_a_problem,
                bgColor: context.colors.white,
                txtColor: context.colors.primary,
                borderColor: context.colors.primary,
              ),
            ),
          ),
          ActionButtonWidget(
            text: _buttonText(controller.getNextStatusForUpdate()),
            onTap: () => controller.changeOrderStatus(),
          ),
        ],
      ),
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

  String _buttonText(OrderStatus status) {
    switch (status) {
      case OrderStatus.assigned:
        return Translate.s.start_delivering;
      case OrderStatus.arrived:
        return Translate.s.arrived;
      case OrderStatus.delivered:
        return Translate.s.delivered;
      case OrderStatus.pending:
        return "";
      case OrderStatus.inDelivery:
        return "Start Delivering";
      case OrderStatus.driverReported:
        return "reported";
    }
  }
}
