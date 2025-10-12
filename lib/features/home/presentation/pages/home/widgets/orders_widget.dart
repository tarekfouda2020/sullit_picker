import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/have_orders_view_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/home_header_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/no_orders_view_widget.dart';
import 'home_widgets_imports.dart';

class OrdersWidget extends StatelessWidget {
  final HomeController controller;

  const OrdersWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    bool noData = false;
    return Padding(
      padding: Dimens.paddingH20Px,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeHeaderWidget(controller: controller),
          Gaps.vGap14,
          CustomSearchBar(controller: controller),
          Visibility(
              visible: noData,
              replacement:  HaveOrdersViewWidget(controller: controller),
              child: const NoOrdersViewWidget()),
        ],
      ),
    );
  }
}
