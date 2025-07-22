import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/subscription_model/subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/presentation/pages/subscription/widgets/subscription_shimmer_widget.dart';

import 'subscription_imports.dart';
import 'widgets/subscription_body_widget.dart';

@RoutePage(name: "SubscriptionPageRoute")
class SubscriptionPage extends StatefulWidget {
  final bool fromAuth;
  const SubscriptionPage({super.key, required this.fromAuth});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {

  late final SubscriptionController controller;

  @override
  void initState() {
    super.initState();
    controller =SubscriptionController(widget.fromAuth);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) => controller.onPressBack( context),
      child: Scaffold(
        backgroundColor: context.colors.background,
        appBar: DefaultAppBar(
          title: "",
          bgColor: context.colors.background,
          showBack: true,
          onPressBack: () => controller.onPressBack(context),
        ),
        body: RequesterConsumer(
            requester: controller.planRequester,
            successBuilder: (context, data, isLoading) {
              return SubscriptionBodyWidget(controller: controller, model: data);
            },
            failureBuilder: (context, error, callback) {
              return Text("No Plans Found",
              style: AppTextStyle.s18_w500(color: context.colors.primary),
              );
            },
            loadingBuilder: (context) => const SubscriptionShimmerWidget(),
        ),
      ),
    );
  }
}