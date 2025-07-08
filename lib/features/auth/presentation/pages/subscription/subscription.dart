import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/widgets/LoadingButton.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/subscription/widgets/agree_terms_conditions.dart';

import 'subscription_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'widgets/plan_benefits_widget.dart';
import 'widgets/plan_budget_widget.dart';
import 'widgets/subscription_widgets_imports.dart';

@RoutePage()
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final controller = SubscriptionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: DefaultAppBar(
        title: "",
        bgColor: context.colors.background,
        size: 20,
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            children: [
          Text(
            Translate.s.weideliver,
            style: AppTextStyle.s32_w700(color: context.colors.primary),
          ),
          Gaps.vGap64,
          Text(
            Translate.s.yearly_subscription,
            style: AppTextStyle.s22_w700(color: context.colors.black),
          ),
          Gaps.vGap30,
          const PlanBudgetWidget(),
          Gaps.vGap17,
          const PlanBenefitsWidget(),
          Gaps.vGap16,
          AgreeTermsConditions(controller: controller),
        Gaps.vGap41,
        AppTextButton.maxPrimary(
          text: "Pay",
          onPressed: ()=> controller.paySubscription(context),
        )
        ]),
      ),
    );
  }
}
