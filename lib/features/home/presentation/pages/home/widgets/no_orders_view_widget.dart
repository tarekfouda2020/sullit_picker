import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/home_header_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/home_refresh_indocator_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/search_bar.dart';

import 'assigned_orders_widget.dart';
import 'home_widgets_imports.dart';

class NoOrdersViewWidget extends StatelessWidget {
  final HomeController controller;
  const NoOrdersViewWidget({super.key, required this.controller, });

  @override
  Widget build(BuildContext context) {
    return HomeRefreshIndicatorWidget(
      onRefresh: () async => await controller.getAllOrders(setLoading: false),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.sizeOf(context).height - kToolbarHeight,
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomeHeaderWidget(controller: controller),
                Gaps.vGap14,
                CustomSearchBar(controller: controller),
                const AssignedOrdersWidget(),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          Res.noOrdersAvailable,
                          width: 123,
                          height: 152,
                        ),
                        Text(
                          Translate.of(context).you_have_no_orders_now,
                          style: AppTextStyle.s16_w400(color: context.colors.primary),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
