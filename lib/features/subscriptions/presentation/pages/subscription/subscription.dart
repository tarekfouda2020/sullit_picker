import 'subscription_imports.dart';

@RoutePage(name: "SubscriptionPageRoute")
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final SubscriptionController controller = SubscriptionController();

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
        padding: Dimens.paddingH20Px,
        child: Column(children: [
          const AppSloganWidget(),
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
            onPressed: () => controller.paySubscription(context),
          )
        ]),
      ),
    );
  }
}
