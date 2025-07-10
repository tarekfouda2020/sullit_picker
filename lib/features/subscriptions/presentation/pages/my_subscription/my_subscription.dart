import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';

import 'my_subscription_imports.dart';

@RoutePage(name: "MySubscriptionPageRoute")
class MySubscriptionPage extends StatefulWidget {
  const MySubscriptionPage({super.key});

  @override
  State<MySubscriptionPage> createState() => _MySubscriptionPageState();
}

class _MySubscriptionPageState extends State<MySubscriptionPage> {

  final MySubscriptionController controller = MySubscriptionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const DefaultAppBar(title: "My Subscription",),
      body:  SingleChildScrollView(
        padding: Dimens.paddingH20Px,
        child: Column(
          children: [
            Gaps.vGap20,
            const SubscriptionContentWidget(),
            Gaps.vGap20,
            AbsorbPointer(
              absorbing: true,
              child: AppTextButton.maxCustom(
                text: "Renew",
                bgColor: context.colors.primary.withValues(alpha: 0.4),
                txtColor: context.colors.white.withValues(alpha: 0.5),
                onPressed: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}

