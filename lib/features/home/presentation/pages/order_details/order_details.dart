import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/bottom_nav_bar_details_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/header_order_details_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_category_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/timer_card_details_widget.dart';
import 'order_details_imports.dart';

@RoutePage(name: "OrderDetailsRouteName")
class OrderDetails extends StatefulWidget {
  final int id;

  const OrderDetails({super.key, required this.id});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  late OrderDetailsController controller;

  @override
  void initState() {
    controller = OrderDetailsController(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const DefaultAppBar(
        title: "",
        bgColor: Colors.transparent,
        size: 20,
        removeBgColorInScroll: true,
      ),
      body: RequesterConsumer(
          requester: controller.showOrdersRequester,
          successBuilder: (context, data, isLoading) => Column(
            children: [
              HeaderOrderDetailsWidget(data: data),
              Gaps.vGap12,
              TimerCardDetailsWidget(data: data),
              Gaps.vGap12,
              PickCategoryWidget(controller: controller, data: data),
            ],
          ),
          failureBuilder: (context, error, callback) => Center(
            child: Text('Something went wrong',style: AppTextStyle.s16_w600(color: context.colors.primary),),
          ),
          loadingBuilder: (context) => const Center(child: CircularProgressIndicator(),),
      ),
      bottomNavigationBar: const BottomNavBarDetailsWidget(),
    );
  }
}
