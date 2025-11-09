
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/order_history_controller.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/helpers/export.dart';
import 'widgets/order_history_item_widget.dart';

@RoutePage(name: "OrderHistoryPageRoute")
class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {


  final OrderHistoryController controller = OrderHistoryController();


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller.setupPagination(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const DefaultAppBar(title: ""),
      body: RefreshIndicator(
        onRefresh: () async => controller.getPreviousOrders(1),
        backgroundColor: context.colors.white,
        child: PagedListView<int, OrderModel>(
          pagingController: controller.pagingController,
          padding: Dimens.paddingScreenAll,
          builderDelegate: PagedChildBuilderDelegate<OrderModel>(
            itemBuilder: (context, order, index) {
              return OrderHistoryItemWidget(order: order);
              },
            firstPageErrorIndicatorBuilder: (context) => _buildErrorWidget(
              context,
             Translate.s.no_orders_found,
              () => controller.refreshOrders(),
            ),
            noItemsFoundIndicatorBuilder: (context) => _buildEmptyWidget(
              context,
              Translate.s.no_orders_found,
            ),
            firstPageProgressIndicatorBuilder: (context) => _buildShimmerList(),
            newPageProgressIndicatorBuilder: (context) => _buildShimmerList(),
          ),
        ),
      ),
    );
  }





  Widget _buildErrorWidget(BuildContext context, String message, VoidCallback onRetry) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: context.colors.red,
            ),
           Gaps.vGap16,
            Text(
              message,
              style: AppTextStyle.s18_w500(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap16,
            AppTextButton.maxPrimary(
              text: Translate.s.retry,
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyWidget(BuildContext context, String title) {
    return Center(
      child: Text(
        title,
        style: AppTextStyle.s20_w600(color: context.colors.textPrimary),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildShimmerList() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 15,
      children: List.generate(4,
              (index) {
        return  BaseShimmerWidget(
            child: Container(
              padding: Dimens.paddingScreenAll,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius12PX,
            border: Border.all(color: context.colors.gray3)
          ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 15,
                children: [
                  const Row(
                    children: [
                      TextShimmer()
                    ],
                  ),
                  ...List.generate(3, (index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: Dimens.borderRadius12PX
                      ),
                      child: const Row(
                        children: [
                          TextShimmer()
                        ],
                      ),
                    );
                  },)
                ],
              ),
        )
        );
      }),
    );
  }




}
