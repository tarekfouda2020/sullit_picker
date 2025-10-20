import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_order_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/search_bar.dart';

import 'assigned_orders_widget.dart';
import 'home_header_widget.dart';
import 'home_widgets_imports.dart';

class HaveOrdersViewWidget extends StatelessWidget {
  final HomeController controller;
  final OrdersModel? data;

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
        AssignedOrdersWidget(ordersCount: data?.assignedOrdersCount ?? 0),
        Gaps.vGap10,
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async => await controller.getAllOrders() ,
            backgroundColor: context.colors.white,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data?.assignedOrders.length ?? 0,
                    separatorBuilder: (_, __) => Gaps.vGap12,
                    itemBuilder: (context, index) {
                      return CardOrderWidget(
                        controller: controller,
                        data: data!.assignedOrders[index],
                      );
                    },
                  ),
                  Gaps.vGap20,
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data?.newOrders.length ?? 0,
                    separatorBuilder: (_, __) => Gaps.vGap12,
                    itemBuilder: (context, index) {
                      return CardOrderWidget(
                        controller: controller,
                        data: data!.newOrders[index],
                      );
                    },
                  ),
                  Gaps.vGap20,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
