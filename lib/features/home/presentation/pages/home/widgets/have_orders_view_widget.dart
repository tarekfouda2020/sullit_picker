import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_order_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/home_refresh_indocator_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/search_bar.dart';

import 'assigned_orders_widget.dart';
import 'home_header_widget.dart';
import 'home_widgets_imports.dart';

class HaveOrdersViewWidget extends StatelessWidget {
  final HomeController controller;
  final OrdersList data;

  const HaveOrdersViewWidget({
    super.key,
    required this.controller,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeaderWidget(controller: controller),
        Gaps.vGap14,
        CustomSearchBar(controller: controller),
        const AssignedOrdersWidget(),
        Gaps.vGap10,
        Expanded(
          child: HomeRefreshIndicatorWidget(
            onRefresh: () async => await controller.getAllOrders(),
            child: CustomScrollView(
              controller: controller.scrollController,
              slivers: [
                BaseBlocBuilder(
                  bloc: controller.assignedOrdersCubit,
                  onSuccessWidget: (assigned) => SliverList.builder(
                    itemCount: assigned.length,
                    itemBuilder: (_, index) => CardOrderWidget(
                      controller: controller,
                      data: assigned[index],
                    ),
                  ),
                ),
                SliverList.builder(
                  itemCount: data.newOrders.length,
                  itemBuilder: (_, index) => CardOrderWidget(
                    controller: controller,
                    data: data.newOrders[index],
                  ),
                ),
                SliverToBoxAdapter(child: Gaps.vGap20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
