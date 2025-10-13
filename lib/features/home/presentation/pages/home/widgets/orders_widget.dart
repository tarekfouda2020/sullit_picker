import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/have_orders_view_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/home_header_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/no_orders_view_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/search_bar.dart';
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            padding: const EdgeInsets.symmetric(
                horizontal: 32, vertical: 10),
            decoration: BoxDecoration(
              color: context.colors.lightPrimary.withOpacity(0.3),
              borderRadius: Dimens.borderRadius30PX,
            ),
            child: Row(
              children: [
                Text(
                  "Assigned Orders : ",
                  style: AppTextStyle.s18_w300(
                      color: context.colors.primary),
                ),
                Gaps.hGap4,
                Text(
                  '2',
                  style: AppTextStyle.s18_w800(
                      color: context.colors.primary),
                )
              ],
            ),
          ),
          Visibility(
              visible: noData,
              replacement: HaveOrdersViewWidget(),
              child: NoOrdersViewWidget()),
        ],
      ),
    );
  }
}
