part of '../in_store_scanner_imports.dart';

class MatchingResultsSheetFooterWidget extends StatelessWidget {
  final InStoreScannerController controller;

  const MatchingResultsSheetFooterWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ObsValueConsumer<bool>(
          observable: controller.canRescanObs,
          builder: (context, canRescan) {
            if (!canRescan) return Gaps.empty;
            return Column(
              children: [
                AppTextButton.maxCustom(
                  text: Translate.s.rescan,
                  onPressed: () => controller.rescan(context),
                  bgColor: context.colors.white,
                  txtColor: context.colors.primary,
                  borderColor: context.colors.primary,
                  textSize: Dimens.font_sp18,
                  maxHeight: Dimens.buttonHeight,
                  borderRadius: Dimens.borderRadius30PX,
                ),
                Gaps.vGap12,
              ],
            );
          },
        ),
        AppTextButton.maxCustom(
          text: Translate.s.confirm_order,
          onPressed: () => controller.confirmOrder(context),
          bgColor: context.colors.green,
          txtColor: context.colors.white,
          textSize: Dimens.font_sp18,
          maxHeight: Dimens.buttonHeight,
          borderRadius: Dimens.borderRadius30PX,
        ),
      ],
    );
  }
}
