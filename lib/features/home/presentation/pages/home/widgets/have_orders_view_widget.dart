import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_order_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/search_bar.dart';

import 'assigned_orders_widget.dart';
import 'home_header_widget.dart';
import 'home_widgets_imports.dart';

class HaveOrdersViewWidget extends StatelessWidget {
  final HomeController controller;
  final OrdersList data;
  const HaveOrdersViewWidget({super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeaderWidget(controller: controller),
        Gaps.vGap14,
        CustomSearchBar(controller: controller),
        AssignedOrdersWidget(ordersCount: data.assignedOrdersCount,),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async => await controller.getAllOrders() ,
            backgroundColor: context.colors.white,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return  CardOrderWidget(controller: controller, data: data.assignedOrders[index],);
              },
              itemCount: data.assignedOrders.length,
              separatorBuilder: (BuildContext context, int index) => Gaps.vGap12,
            ),
          ),
        ),
      ],
    );
  }
}
