
import 'package:flutter_tdd/features/subscriptions/data/models/current_subscription_model/current_subscription_model.dart';

import 'subscription_widgets_imports.dart';

class MySubscriptionBodyWidget extends StatelessWidget {
  final MySubscriptionController controller;
  final CurrentSubscriptionModel model;
  const MySubscriptionBodyWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Dimens.paddingH20Px,
      child: Column(
        children: [
          Gaps.vGap20,
           SubscriptionContentWidget(model: model),
          Gaps.vGap20,
                      AbsorbPointer(
            absorbing: model.subscribed,
            child: AppTextButton.maxCustom(
              text: Translate.of(context).renew,
              bgColor: model.subscribed
                  ?context.colors.primary.withValues(alpha: 0.4)
                  :context.colors.primary,
              txtColor: model.subscribed
                  ?context.colors.white.withValues(alpha: 0.5)
                  :context.colors.white,
              // onPressed: ()=> controller.showPaymentSheet(context),
              onPressed: ()=> controller.showPaymentSheet(context),
            ),
          )
        ],
      ),
    );
  }
}
