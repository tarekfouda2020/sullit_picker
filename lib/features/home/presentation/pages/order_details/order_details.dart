import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/header_order_details_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_category_widget.dart';
import '../../../../auth/presentation/pages/change_password/change_password_imports.dart';
import 'widget/timer_card_details_widget.dart';
@RoutePage(name: "OrderDetailsRoute")
class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const DefaultAppBar(
        title: "",
        bgColor: Colors.transparent,
        size: 20,
      ),
      body: Padding(
        padding: Dimens.paddingH20Px,
        child: Column(
          children: [
            const HeaderOrderDetailsWidget(),
            Gaps.vGap12,
            const TimerCardDetailsWidget(),
            Gaps.vGap12,
            const PickCategoryWidget(catTitle: 'Fresh Food & Deli',)
          ],
        ),
      ),
    );
  }
}
