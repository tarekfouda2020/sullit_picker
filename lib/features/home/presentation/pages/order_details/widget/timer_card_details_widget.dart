import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_picked_ratio_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/order_count_down_timer_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/left_items_widget.dart';

import 'widgets_imports.dart';

class TimerCardDetailsWidget extends StatelessWidget {
  final OrderModel data;
  final OrderDetailsController controller;
  const TimerCardDetailsWidget({super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20Px,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.inputBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardPickedRatioWidget(
              pickedPercentage: data.pickedPercent!,
              child: LeftItemsWidget(
                key: GlobalKey(debugLabel: "${data.id}"),
                numberOfItems: data.ordersDetails?.length ?? 0,
                pickedPercent: data.pickedPercent!,
                endTitle: "${data.totalItems.toString()} ${Translate.of(context).items_left_suffix}",
              )
          ),
          Gaps.vGap12,
          Column(
            children: [
              Text(
                Translate.of(context).must_picking_within,
                style: AppTextStyle.s16_w300(color: context.colors.black),
              ),
              Gaps.vGap15,
              OrderCountDownTimerWidget(
                pickWithinTime: DateTime.now().add(Duration(
                  minutes: data.preparationMinutes,
                  seconds: data.preparationSeconds ?? 0,
                )),
                isNewOrder: false,
                duringCountDown: (duration) {
                  data.preparationMinutes = duration.inMinutes;
                  data.preparationSeconds = duration.inSeconds;
                  getIt<OrdersHelper>().saveOrderDetails(data);
                  // Update the same order in the list
                  _updateOrderInList();
                },
              )

            ],
          )
        ],
      ),
    );
  }

  void _updateOrderInList() {
    // Update the same order in the assigned orders list
    var assignedOrders = getIt<OrdersHelper>().assignedOrdersCubit.data;
    if (assignedOrders != null) {
      for (var order in assignedOrders) {
        if (order.id == data.id) {
          order.preparationMinutes = data.preparationMinutes;
          order.preparationSeconds = data.preparationSeconds;
          break;
        }
      }
      getIt<OrdersHelper>().saveAssignedOrders(assignedOrders);
    }
  }

}
