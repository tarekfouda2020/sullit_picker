import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/assigned_orders_widget.dart';
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
    return Padding(padding:  Dimens.paddingH20Px,
    child: BaseBlocBuilder(
        bloc: controller.ordersListCubit,
        onSuccessWidget: (data) {
          print("🟢 ordersListCubit updated with ${data.assignedOrders.length} items");
          return Visibility(
              visible: data.assignedOrders.isEmpty && data.newOrders.isEmpty,
              replacement:  HaveOrdersViewWidget(controller: controller, data: data),
              child:  NoOrdersViewWidget(controller: controller,)
          );
        },
      onLoadingWidget: (context) {
       return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: CircularProgressIndicator()),
          ],
        );
      },
      onFailedWidget: (context, error, callback) {
        return NoOrdersViewWidget(controller: controller,);
      },
    ),
    );
  }
}
