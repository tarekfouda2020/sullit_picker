import 'package:flutter_tdd/core/widgets/default_app_bar.dart';

import 'new_orders_imports.dart';

@RoutePage(name: "NewOrdersPageRoute")
class NewOrders extends StatefulWidget {
  const NewOrders({super.key});

  @override
  State<NewOrders> createState() => _NewOrdersState();
}

class _NewOrdersState extends State<NewOrders> {
  late NewOrdersController controller;

  @override
  void initState() {
    super.initState();
    controller = NewOrdersController(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "New Orders"),
      body: PagedListView<int, OrderModel>(
        pagingController: controller.pagingController,
        padding: Dimens.paddingH20V16Px,
        builderDelegate: PagedChildBuilderDelegate<OrderModel>(
          itemBuilder: (context, order, index) => OrderHistoryCardWidget(
            order: order,
            isFailed: false,
          ),
          firstPageErrorIndicatorBuilder: (context) => _buildErrorWidget(
            context,
            'Failed to load new orders',
            () => controller.refreshOrders(),
          ),
          noItemsFoundIndicatorBuilder: (context) => _buildEmptyWidget(
            context,
            'No new orders available',
            'Check back later for new delivery opportunities.',
          ),
          firstPageProgressIndicatorBuilder: (context) => _buildShimmerList(),
          newPageProgressIndicatorBuilder: (context) => _buildShimmerList(),
        ),
      ),
    );
  }

  Widget _buildShimmerList() {
    return Column(
      children: List.generate(4, (index) {
        return const OrderHistoryCardShimmer();
      }),
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
              text: 'Retry',
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyWidget(BuildContext context, String title, String subtitle) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inbox_outlined,
              size: 64,
              color: context.colors.gray58,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
