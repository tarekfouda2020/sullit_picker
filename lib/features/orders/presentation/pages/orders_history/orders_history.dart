import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/duration_constants.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/res.dart';

import 'orders_history_imports.dart';
import 'widgets/order_history_tabs_widget.dart';

@RoutePage(name: "OrdersHistoryPageRoute")
class OrdersHistoryPage extends StatefulWidget {
  const OrdersHistoryPage({super.key});

  @override
  State<OrdersHistoryPage> createState() => _OrdersHistoryPageState();
}

class _OrdersHistoryPageState extends State<OrdersHistoryPage> {


  final OrdersHistoryController controller = OrdersHistoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar:  DefaultAppBar(title: Translate.of(context).orders_history,bgColor: context.colors.background,),
      body: Padding(
        padding:  Dimens.paddingH20Px,
        child: Column(
          children: [
            Gaps.vGap16,
            OrderHistoryTabsWidget(controller: controller,),
            Gaps.vGap16,
            ObsValueConsumer(observable: controller.currentTabObs,
              builder: (context, value) {
              return Expanded(
                child: AnimatedSwitcher(
                  duration: DurationConstants.normalAnimationDuration,
                  child: controller.currentView(),
                ),
              );
            },),
          ],
        ),
      ),
    );
  }
}
