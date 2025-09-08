import 'falied_orders_imports.dart';

class FailedOrdersListWidget extends StatefulWidget {
  const FailedOrdersListWidget({super.key});

  @override
  State<FailedOrdersListWidget> createState() => _FailedOrdersListWidgetState();
}

class _FailedOrdersListWidgetState extends State<FailedOrdersListWidget> {
  late FailedOrdersController controller;

  @override
  void initState() {
    super.initState();
    controller = FailedOrdersController(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => controller.showDateRangePicker(context),
          child: Row(
            children: [
              ObsValueConsumer(
                observable: controller.differenceInDaysObs,
                builder: (context,value) {
                  return Text(
                    value==0
                        ?"Select Date"
                        :"$value ${_daysText(value)}",
                    style: AppTextStyle.s14_w400(color: context.colors.gray3),
                  );
                }
              ),
              Gaps.hGap6,
              SvgPicture.asset(Res.invertedTriangle),
            ],
          ),
        ),
        Gaps.vGap12,
        // Orders list with pagination
        Expanded(
          child: RefreshIndicator.adaptive(
            onRefresh: () async => controller.getFailedOrders(1),
            backgroundColor: context.colors.white,
            child: PagedListView<int, OrderModel>(
              pagingController: controller.pagingController,
              builderDelegate: PagedChildBuilderDelegate<OrderModel>(
                itemBuilder: (context, order, index) => OrderHistoryCardWidget(
                  order: order,
                  isFailed: true,
                ),
                firstPageErrorIndicatorBuilder: (context) => _buildErrorWidget(
                  context,
                  'Failed to load failed orders',
                  () => controller.refreshOrders(),
                ),
                noItemsFoundIndicatorBuilder: (context) => _buildEmptyWidget(
                  context,
                  'No failed orders found',
                  'Great! All your orders were completed successfully.',
                ),
                firstPageProgressIndicatorBuilder: (context) => _buildShimmerList(),
                newPageProgressIndicatorBuilder: (context) => _buildShimmerList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _daysText(int days){
    if(days<=10 && days>1){
      return "days";
    }else{
      return "day";
    }
  }

  Widget _buildShimmerList() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(4, (index) {
          return const OrderHistoryCardShimmer();
        }),
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
