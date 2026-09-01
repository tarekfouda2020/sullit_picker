part of '../in_store_scanner_imports.dart';

class SearchOrdersSheetWidget extends StatelessWidget {
  final InStoreScannerController controller;
  final List<OrderModel> orders;

  const SearchOrdersSheetWidget({
    super.key,
    required this.controller,
    required this.orders,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.92,
      padding: Dimens.paddingH20V16Px,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        children: [
          BottomSheetHeaderWidget(title: Translate.s.search_by_order_number),
          Gaps.vGap16,
          Expanded(
            child: orders.isEmpty
                ? Center(
                    child: Text(
                      Translate.s.no_orders_found,
                      style: AppTextStyle.s16_w400(color: context.colors.black),
                    ),
                  )
                : ListView.builder(
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      return SearchOrderCardWidget(
                        order: orders[index],
                        onTap: () => controller.acceptSearchedOrder(
                          context,
                          orders[index],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
