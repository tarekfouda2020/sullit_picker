part of 'prescription_order_imports.dart';

@RoutePage(name: "PrescriptionOrderRoute")
class PrescriptionOrder extends StatefulWidget {
  const PrescriptionOrder({super.key});

  @override
  State<PrescriptionOrder> createState() => _PrescriptionOrderState();
}

class _PrescriptionOrderState extends State<PrescriptionOrder> {
  final PrescriptionOrderController controller = PrescriptionOrderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(title: Translate.s.prescription_order),
      body: Column(
        children: [
          Expanded(
            child: BaseBlocBuilder<List<OrderDetailsModel>>(
              bloc: controller.ordersDetailsCubit,
              onSuccessWidget: (items) => items.isEmpty
                  ? _buildEmptyState(context)
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ScannedProductItemWidget(
                            data: item,
                            onIncrement: () => controller.updateQuantity(
                                item, item.quantity + 1),
                            onDecrement: () => controller.updateQuantity(
                                item, item.quantity - 1),
                            onRemove: () => controller.removeItem(item),
                          ),
                        );
                      },
                    ),
            ),
          ),
          OrderInvoiceWidget(invoice: controller.invoice),
          Padding(
            padding: const EdgeInsets.all(16),
            child: AppTextButton.maxPrimary(
              text: Translate.s.scan_barcode,
              onPressed: () => controller.scanAndAddProduct(context),
            ),
          ),
        ],
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
