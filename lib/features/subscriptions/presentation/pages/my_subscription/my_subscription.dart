import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/current_subscription_model/current_subscription_model.dart';
import 'package:flutter_tdd/features/subscriptions/presentation/pages/my_subscription/widgets/my_subscription_shimmer_widget.dart';
import 'my_subscription_imports.dart';
import 'widgets/my_subscription_body_widget.dart';

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
      appBar: DefaultAppBar(title: Translate.of(context).my_subscription,),
      body: RequesterConsumer<CurrentSubscriptionModel>(
          requester: controller.currentPlanRequester,
          successBuilder: (context, data, isLoading) {
            return MySubscriptionBodyWidget(controller: controller, model: data);
          },
          failureBuilder: (context, error, callback) => const SizedBox(),
          loadingBuilder: (context) =>  const MySubscriptionShimmerWidget()
      ),
    );
  }
}

