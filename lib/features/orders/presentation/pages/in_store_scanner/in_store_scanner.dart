part of 'in_store_scanner_imports.dart';

@RoutePage(name: "InStoreScannerRoute")
class InStoreScannerPage extends StatefulWidget {
  const InStoreScannerPage({super.key});

  @override
  State<InStoreScannerPage> createState() => _InStoreScannerPageState();
}

class _InStoreScannerPageState extends State<InStoreScannerPage> {
  final InStoreScannerController controller  = InStoreScannerController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      controller.init(context);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(title: Translate.s.in_store_scanner),
      body: Column(
        children: [
          Padding(
            padding: Dimens.paddingH20Px,
            child: Column(
              children: [
                ObsValueConsumer<String>(
                  observable: controller.orderNoObs,
                  builder: (context, orderNo) {
                    return OrderNumberBadgeWidget(orderNo: orderNo);
                  },
                ),
                ObsValueConsumer<bool>(
                  observable: controller.productScanModeObs,
                  builder: (context, productScanMode) {
                    if (productScanMode) return Gaps.empty;
                    return Column(
                      children: [
                        Gaps.vGap16,
                        ScannerSearchFieldWidget(
                          textController: controller.orderNumberTextController,
                          hint: Translate.s.search_by_order_number,
                          onSubmit: () => controller.submitOrderNumber(context),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          Gaps.vGap16,
          Expanded(
            child: Padding(
              padding: Dimens.paddingH20Px,
              child: ScannerWidget(controller: controller),
            ),
          ),
          Gaps.vGap16,
          SafeArea(
            top: false,
            child: Padding(
              padding: Dimens.paddingH20Px,
              child: Column(
                children: [
                  ScannerStatusBarWidget(controller: controller),
                  Gaps.vGap16,
                  StartMatchingButtonWidget(controller: controller),
                  Gaps.vGap10,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
