part of '../in_store_scanner_imports.dart';

class ScannerStatusBarWidget extends StatelessWidget {
  final InStoreScannerController controller;

  const ScannerStatusBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<int>(
      observable: controller.itemsCountObs,
      builder: (context, itemsCount) {
        return ObsValueConsumer<double>(
          observable: controller.pickedPercentObs,
          builder: (context, pickedPercent) {
            return Container(
              width: double.infinity,
              padding: Dimens.paddingH16V10PX,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius30PX,
                border: Border.all(color: context.colors.borderColor),
              ),
              child: Row(
                children: [
                  Text(
                    '${Translate.s.no_of_items} :  ',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  Expanded(
                    child: Text(
                      '$itemsCount',
                      style: AppTextStyle.s16_w800(color: context.colors.black),
                    ),
                  ),
                  Text(
                    controller.pickedLabel(pickedPercent),
                    style: AppTextStyle.s14_w500(color: context.colors.black),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
