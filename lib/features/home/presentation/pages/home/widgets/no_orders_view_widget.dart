import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/home_header_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/search_bar.dart';

import 'assigned_orders_widget.dart';
import 'home_widgets_imports.dart';

class NoOrdersViewWidget extends StatelessWidget {
  final HomeController controller;
  final int ordersCount;
  const NoOrdersViewWidget({super.key, required this.controller, required this.ordersCount});

  @override
  Widget build(BuildContext context) {
    Padding(
      padding: Dimens.paddingH20Px,
      child: RefreshIndicator(
        backgroundColor: context.colors.white,
        onRefresh: ()=> controller.getOrdersRequester.request(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - kToolbarHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HomeHeaderWidget(controller: controller),
                  Gaps.vGap14,
                  CustomSearchBar(controller: controller),
                  AssignedOrdersWidget(ordersCount: ordersCount,),
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
      ),
    );
    return Expanded(
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
    );
  }
}
