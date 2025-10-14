import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/order_count_down_timer_widget.dart';
import '../../../widgets/left_items_widget.dart';
import '../home_imports.dart';
import 'card_picked_ratio_widget.dart';
class CardOrderWidget extends StatelessWidget {
  final HomeController controller;
  const CardOrderWidget({super.key, required this.controller});

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
          Row(
            children: [
              Text('Order No. : ',style: AppTextStyle.s18_w300(color: context.colors.blackOpacity),),
              Text('3253646',style: AppTextStyle.s20_w600(color: context.colors.primary)),
            ],
          ),
          Gaps.vGap8,
          Text('Assigned 2 min ago',style: AppTextStyle.s14_w300(color: context.colors.textColor)),
          Gaps.vGap15,
          const CardPickedRatioWidget(
            pickedPercentage: 20,
            numberOfItems: 5,
            child: LeftItemsWidget(numberOfItems: 4, pickedPercent: 20,)
          ),
          Gaps.vGap15,
           Center(
             child: Text("Must Picking within",
             style: AppTextStyle.s16_w300(color: context.colors.simiGray),
             ),
           ),
          Gaps.vGap18,
          OrderCountDownTimerWidget(pickWithinTime: DateTime.now().add(const Duration(minutes: 25))),
          Gaps.vGap24,
          AppTextButton.maxCustom(
            text: 'Continue Picking',
            maxHeight: 44,
            textSize: 18,
            onPressed: () {
              AutoRouter.of(context).push(const OrderDetailsRouteName());
            },
          )
        ],
      ),
    );
  }
}
