import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/time_picking_widget.dart';
import 'card_picked_ratio_widget.dart';
import 'home_widgets_imports.dart';

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
          Gaps.vGap12,
          const CardPickedRatioWidget(ratio: '100',color: Color(0xFF009900),),
          Gaps.vGap12,
           OrderCountDownTimerWidget(controller: controller)
        ],
      ),
    );
  }
}
