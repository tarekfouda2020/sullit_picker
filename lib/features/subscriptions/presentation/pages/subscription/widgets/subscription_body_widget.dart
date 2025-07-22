import 'package:flutter_tdd/features/subscriptions/data/models/subscription_model/subscription_model.dart';

import 'subscription_widgets_imports.dart';

class SubscriptionBodyWidget extends StatelessWidget {
  final SubscriptionController controller;
  final SubscriptionModel model;
  const SubscriptionBodyWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH20Px,
      child: Column(
          children: [const AppSloganWidget(),
            Gaps.vGap64,
            Text(
              model.title ?? Translate.s.yearly_subscription,
              style: AppTextStyle.s22_w700(color: context.colors.black),
            ),
            Gaps.vGap30,
            PlanBudgetWidget(model: model),
            Gaps.vGap17,
            PlanBenefitsWidget(model: model),
            Gaps.vGap16,
            AgreeTermsConditions(controller: controller),
            Gaps.vGap41,
            AppTextButton.maxPrimary(
              text: "Pay",
              onPressed: () => controller.paySubscription(context),
            )
          ]),
    );
  }
}
