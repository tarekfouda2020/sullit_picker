part of '../in_store_scanner_imports.dart';

class ScannerWidget extends StatelessWidget {
  final InStoreScannerController controller;

  const ScannerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll16Px,
      decoration: BoxDecoration(
        color: context.colors.simiGray,
        borderRadius: Dimens.borderRadius20PX,
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: Dimens.borderRadius20PX,
              child: ObsValueConsumer<bool>(
                observable: controller.cameraClosedObs,
                builder: (context, cameraClosed) {
                  return MobileScanner(
                    controller: controller.scannerController,
                    onDetect: (BarcodeCapture capture) {
                      if (cameraClosed) return;
                      String? barcode = controller.detectBarcode(capture);
                      if (barcode == null) return;
                      if (!context.mounted) return;
                      controller.onBarcodeAccepted(context, barcode);
                    },
                    errorBuilder: (context, error, _) {
                      return ColoredBox(
                        color: context.colors.simiGray,
                        child: Center(
                          child: Padding(
                            padding: Dimens.paddingAll16Px,
                            child: Text(
                              error.errorDetails?.message ??
                                  Translate.s.something_went_wrong,
                              textAlign: TextAlign.center,
                              style: AppTextStyle.s14_w400(
                                color: context.colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          ObsValueConsumer<bool>(
            observable: controller.productScanModeObs,
            builder: (context, productScanMode) {
              if (!productScanMode) return Gaps.empty;
              return Column(
                children: [
                  Gaps.vGap16,
                  ScannerSearchFieldWidget(
                    textController: controller.barcodeTextController,
                    hint: Translate.s.search_by_barcode_no,
                    onSubmit: () => controller.submitBarcodeText(context),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
