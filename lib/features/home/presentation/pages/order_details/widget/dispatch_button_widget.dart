import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';


class DispatchButtonWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const DispatchButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: AppTextButton.maxCustom(
            text: Translate.of(context).dispatch,
            onPressed: ()=> controller.showBagsCountDialog(context),
            textSize: 18,
            txtColor: context.colors.white,
            bgColor: context.colors.appGreen,
            maxHeight: 50,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Translate.s.total,
            style: AppTextStyle.s14_w600(color: context.colors.black),
            ),
            Gaps.vGap5,
            DirhamPrice(amount: controller.getDetailsData.total,
              textStyle: AppTextStyle.s18_w700(color: context.colors.darkRose),
            )
          ],
        )
      ],
    );
  }
}
