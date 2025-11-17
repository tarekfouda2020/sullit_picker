import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/have_orders_view_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/have_orders_view_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/no_orders_view_widget.dart';
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
          if(data==null){
            return NoOrdersViewWidget(controller: controller,);
          }else{
            return HaveOrdersViewWidget(controller: controller, data: data!);
          }
        },
      onLoadingWidget: (context) {
       return const HaveOrdersViewShimmerWidget();
      },
      onFailedWidget: (context, error, callback) {
        return NoOrdersViewWidget(controller: controller,);
      },
    ),
    );
  }





  /// if not available when an order create the *data* return null
  /// else *assignedOrdersList* and *newOrdersList* both return empty
  bool _haveNoData(OrdersList? data) => (
      (
          (data?.assignedOrders ?? <OrderModel>[]).isEmpty && (data?.newOrders ?? <OrderModel>[]).isEmpty
      )
          || data==null
  );
}
