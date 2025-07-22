import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/gradient_container_widget.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/subscription_model/subscription_model.dart';

import 'subscription_widgets_imports.dart';

class PlanBudgetWidget extends StatelessWidget {
  final SubscriptionModel model;
  const PlanBudgetWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
      height: 125,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Your subscription fees",
          style: AppTextStyle.s16_w400(color: context.colors.white),
        ),
        Gaps.vGap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(model.price,
              style: AppTextStyle.s28_w800(color: context.colors.gold),
            ),
            Text("/${model.duration}",
              style: AppTextStyle.s20_w400(color: context.colors.gold),
            ),
          ],
        )
      ],
    ),
       );
  }
}
