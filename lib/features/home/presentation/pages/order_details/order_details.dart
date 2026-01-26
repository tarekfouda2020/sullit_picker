import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/bottom_nav_bar_details_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/header_order_details_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/order_details_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_item_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/timer_card_details_widget.dart';

import 'order_details_imports.dart';
import 'widget/order_details_header_widget.dart';

import 'package:flutter_tdd/features/home/presentation/widgets/order_invoice_widget.dart';

import 'widget/used_bags_number_widget.dart';

@RoutePage(name: "OrderDetailsRouteName")
class OrderDetails extends StatefulWidget {
  final int id;
  final DateTime targetTime;

  const OrderDetails({super.key, required this.id, required this.targetTime});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  late final OrderDetailsController controller;

  @override
  void initState() {
    controller = OrderDetailsController(widget.id, widget.targetTime);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Padding(
        padding: Dimens.paddingH20Px,
        child: BaseBlocBuilder(
          bloc: controller.detailsCubit,
          onSuccessWidget: (data) {
            return Column(
              children: [
                Gaps.vGap(kToolbarHeight),
                OrderDetailsHeaderWidget(data: data),
                Gaps.vGap5,
                Expanded(
                  child: ListView(
                    children: [
                      HeaderOrderDetailsWidget(
                        data: data,
                        controller: controller,
                      ),
                      Gaps.vGap12,
                      TimerCardDetailsWidget(
                          data: data, controller: controller),
                      Gaps.vGap12,
                      ...List.generate(data.ordersDetails!.length, (index) {
                        return PickItemWidget(
                          orderDetails: data.ordersDetails![index],
                          controller: controller,
                        );
                      }),
                      UsedBagsNumberWidget(controller: controller),
                      OrderInvoiceWidget(invoice: data.invoiceModel),
                      Gaps.vGap32,
                    ],
                  ),
                ),
              ],
            );
          },
          onLoadingWidget: (context) {
            return const OrderDetailsShimmerWidget();
          },
          onFailedWidget: (context, error, callback) {
            return Center(
              child: Text(
                Translate.s.something_went_wrong,
                style: AppTextStyle.s16_w600(color: context.colors.primary),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavBarDetailsWidget(controller: controller),
    );
  }
}
