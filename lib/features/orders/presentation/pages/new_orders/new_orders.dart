import 'package:flutter_tdd/core/helpers/orders_helper.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/new_orders/widgets/new_order_item_widget.dart';

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
      body: Visibility(
        visible: getIt<OrdersHelper>().currentOrderCubit.hasNoData,
        replacement: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: context.colors.red,
                size: 48,
              ),
            Gaps.vGap10,
              Text(
                "Finish Your Current Order First",
                style: AppTextStyle.s20_w800(color: context.colors.red),
                textAlign: TextAlign.center,
              ),
              Gaps.vGap5,
              Text(
                "You need to complete your active order before accepting new ones.",
                style: AppTextStyle.s20_w600(color: context.colors.black).copyWith(
                  height: 1.5
                ),
                textAlign: TextAlign.center,
              ),
              Gaps.vGap40,
            ],
          ),
        ),
        child: RefreshIndicator(
          onRefresh: () async => controller.getNewOrders(1),
          backgroundColor: context.colors.white,
          child: PagedListView<int, OrderModel>(
            pagingController: controller.pagingController,
            padding: Dimens.paddingH20V16Px,
            builderDelegate: PagedChildBuilderDelegate<OrderModel>(
              itemBuilder: (context, order, index) {
                return NewOrderItemWidget(
                  order: order,
                  controller: controller,
                );
              },
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
