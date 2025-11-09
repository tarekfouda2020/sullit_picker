
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history/order_history_controller.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/helpers/export.dart';

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
      body: RefreshIndicator(
        onRefresh: () async => controller.getPreviousOrders(1),
        backgroundColor: context.colors.white,
        child: PagedListView<int, OrderModel>(
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<OrderModel>(
            itemBuilder: (context, order, index) {return const SizedBox();},
            firstPageErrorIndicatorBuilder: (context) => _buildErrorWidget(
              context,
              "No orders found",
                  () => controller.refreshOrders(),
            ),
            noItemsFoundIndicatorBuilder: (context) => _buildEmptyWidget(
              context,
              "Nothing no tell you!",
              "No orders found",
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
            const SizedBox(height: 16),
            Text(
              message,
              style: AppTextStyle.s16_w500(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            AppTextButton.maxPrimary(
              text: Translate.s.retry,
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyWidget(BuildContext context, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Center(
        child: Text(
          title,
          style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildShimmerList() {
    return Column(
      children: List.generate(4, (index) {
        return  Gaps.empty;
      }),
    );
  }




}
