
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_picked_ratio_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/order_count_down_timer_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/left_items_widget.dart';

import 'home_widgets_imports.dart';
class CardOrderWidget extends StatelessWidget {
  final HomeController controller;
  final OrderModel data;
  const CardOrderWidget({super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20Px,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.inputBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text('Order No. : ',style: AppTextStyle.s18_w300(color: context.colors.blackOpacity),),
              Text(data.code,style: AppTextStyle.s20_w600(color: context.colors.primary)),
            ],
          ),
          Gaps.vGap8,
          ObsValueConsumer(
            observable: DateTimeHelper.getDifferenceFromCurrentDate(data.startPickingAt),
            builder: (context, assignedTime) {
              return Text('Assigned $assignedTime',style: AppTextStyle.s14_w300(color: context.colors.textColor));
            },
          ),
          Gaps.vGap15,
           CardPickedRatioWidget(
            pickedPercentage: data.pickedPercent!,
            child:  LeftItemsWidget(
              key: GlobalKey(debugLabel: "${data.id}"),
              numberOfItems: data.totalItems,
              pickedPercent: data.pickedPercent!,
            )
          ),
          Gaps.vGap15,
           Center(
             child: Text("Must Picking within",
             style: AppTextStyle.s16_w300(color: context.colors.simiGray),
             ),
           ),
          Gaps.vGap18,
          OrderCountDownTimerWidget(
              pickWithinTime: DateTime.now().add(Duration(minutes: data.preparationMinutes,seconds: 1)),
            isNewOrder: data.isNewOrder,
            duringCountDown: (duration) {
              data.preparationMinutes = duration.inMinutes;
                var assignedList = controller.assignedOrdersCubit.data;
            getIt<OrdersHelper>().saveAssignedOrders(assignedList!);
            },
          ),
          Gaps.vGap24,
          AppTextButton.maxCustom(
            text: data.isNewOrder ? 'Start Pick' : 'Continue Picking',
            maxHeight: 44,
            textSize: 18,
            onPressed: () {
              controller.acceptOrder(context, data);
            },
          )
        ],
      ),
    );
  }
}
