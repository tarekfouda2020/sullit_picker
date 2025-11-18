import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
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
            onRefresh: () async => await controller.getAllOrders() ,
            child: ListView(
              children: [
                BaseBlocBuilder(
                  bloc: controller.assignedOrdersCubit,
                  onSuccessWidget: (assigned) {
                  return Column(
                    children: List.generate(assigned.length,
                        (index) {
                      return CardOrderWidget(
                        controller: controller,
                        data: assigned[index],
                      );
                    },),
                  );
                },),
                ...List.generate(data.newOrders.length,
                      (index) {
                    return CardOrderWidget(
                      controller: controller,
                      data: data.newOrders[index],
                    );
                  },),
                Gaps.vGap20,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
