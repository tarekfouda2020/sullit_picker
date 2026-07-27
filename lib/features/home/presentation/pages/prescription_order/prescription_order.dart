part of 'prescription_order_imports.dart';

@RoutePage(name: "PrescriptionOrderRoute")
class PrescriptionOrder extends StatefulWidget {
  final int orderId;
  const PrescriptionOrder({super.key, required this.orderId});

  @override
  State<PrescriptionOrder> createState() => _PrescriptionOrderState();
}

class _PrescriptionOrderState extends State<PrescriptionOrder> {
  late final PrescriptionOrderController controller =
      PrescriptionOrderController(orderId: widget.orderId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(title: Translate.s.prescription_order),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrescriptionOrderSummaryWidget(
            insuranceDiscountObs: controller.insuranceDiscountObs,
            bagsCountObs: controller.bagsCountObs,
            onEditInsuranceDiscount: () => controller.editInsuranceDiscount(context),
            onEditBagsCount: () => controller.editBagsCount(context),
          ),
          Gaps.vGap10,
          PrescriptionCustomerCardWidget(
            orderCubit: controller.orderCubit,
            onTap: (customer) => controller.showCustomerSheet(context, customer),
          ),
          Gaps.vGap10,
          PrescriptionAttachmentsRowWidget(
            orderCubit: controller.orderCubit,
            onTap: () => controller.showAttachmentsSheet(context),
            getCount: controller.attachmentCount,
          ),
          Gaps.vGap10,
          PrescriptionSearchHintLoaderWidget(controller: controller),
          Expanded(
              child: BaseBlocBuilder<List<OrderDetailsModel>>(
                bloc: controller.ordersProductsCubit,
                onLoadingWidget: (_) => const PrescriptionProductsShimmerWidget(),
                onSuccessWidget: (items) {
                  final bool readOnly = !controller.isEditing;
                  return items.isEmpty
                      ? _buildEmptyState(context)
                      : ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            OrderDetailsModel item = items[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: ScannedProductItemWidget(
                                data: item,
                                readOnly: readOnly,
                                onIncrement: () => controller.updateQuantity(
                                    item, item.quantity + 1),
                                onDecrement: () => controller.updateQuantity(
                                    item, item.quantity - 1),
                                onRemove: () => controller.removeItem(item),
                                onInsuranceCoverage: () => controller.showItemInsuranceCoverageDialog(context, item),
                                onInstructions: () => controller.showItemInstructionsDialog(context, item),
                              ),
                            );
                          },
                        );
                },
              ),
            ),
            Gaps.vGap20,
            PrescriptionBottomNavLoaderWidget(controller: controller),
            Gaps.vGap10,

          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          Translate.s.no_products_scanned_yet,
          textAlign: TextAlign.center,
          style: AppTextStyle.s16_w400(color: context.colors.simiGray),
        ),
      ),
    );
  }
}
