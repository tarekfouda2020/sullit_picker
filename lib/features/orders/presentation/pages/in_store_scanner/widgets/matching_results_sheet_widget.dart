part of '../in_store_scanner_imports.dart';

class MatchingResultsSheetWidget extends StatelessWidget {
  final InStoreScannerController controller;

  const MatchingResultsSheetWidget({super.key, required this.controller});

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
          MatchingResultsSheetHeaderWidget(controller: controller),
          Gaps.vGap16,
          Expanded(
            child: ObsValueConsumer<List<MatchingProductItem>>(
              observable: controller.missedItemsObs,
              builder: (context, missedItems) {
                return ObsValueConsumer<List<MatchingProductItem>>(
                  observable: controller.extraItemsObs,
                  builder: (context, extraItems) {
                    return ListView(
                      children: [
                        MatchingMismatchSectionWidget(
                          title: Translate.s.missed_items,
                          items: missedItems,
                        ),
                        Gaps.vGap8,
                        MatchingMismatchSectionWidget(
                          title: Translate.s.extra_items,
                          items: extraItems,
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          Gaps.vGap12,
          SafeArea(
            top: false,
            child: MatchingResultsSheetFooterWidget(controller: controller),
          ),
        ],
      ),
    );
  }
}
