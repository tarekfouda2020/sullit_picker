part of '../in_store_scanner_imports.dart';

class StartMatchingButtonWidget extends StatelessWidget {
  final InStoreScannerController controller;

  const StartMatchingButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<int>(
      observable: controller.itemsCountObs,
      builder: (context, itemsCount) {
        final enabled = itemsCount > 0;
        return Opacity(
          opacity: enabled ? 1 : 0.5,
          child: IgnorePointer(
            ignoring: !enabled,
            child: AppTextButton.maxCustom(
              text: Translate.s.start_matching,
              onPressed: () => controller.startMatching(context),
              bgColor: context.colors.green,
              txtColor: context.colors.white,
              textSize: Dimens.font_sp18,
              maxHeight: Dimens.buttonHeight,
              borderRadius: Dimens.borderRadius30PX,
            ),
          ),
        );
      },
    );
  }
}
