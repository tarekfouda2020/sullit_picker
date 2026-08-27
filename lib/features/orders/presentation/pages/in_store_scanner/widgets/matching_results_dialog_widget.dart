part of '../in_store_scanner_imports.dart';

class MatchingResultsDialogWidget extends StatelessWidget {
  final InStoreScannerController controller;
  final VoidCallback onConfirm;

  const MatchingResultsDialogWidget({
    super.key,
    required this.controller,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      surfaceTintColor: context.colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
      contentPadding: Dimens.paddingAll20Px,
      shape: const RoundedRectangleBorder(
        borderRadius: Dimens.borderRadius30PX,
      ),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Translate.s.matching_results,
              textAlign: TextAlign.center,
              style: AppTextStyle.s20_w700(color: context.colors.black),
            ),
            Gaps.vGap20,
            OrderNumberBadgeWidget(
              orderNo: controller.orderNo,
              expand: false,
            ),
            Gaps.vGap24,
            Container(
              width: Dimens.dp96,
              height: Dimens.dp96,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.green,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                Res.checkIcon,
                width: Dimens.dp40,
                height: Dimens.dp32,
                colorFilter: ColorFilter.mode(
                  context.colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Gaps.vGap20,
            ObsValueConsumer<double>(
              observable: controller.pickedPercentObs,
              builder: (context, percent) {
                final value = percent % 1 == 0
                    ? percent.toStringAsFixed(0)
                    : percent.toStringAsFixed(2);
                return Text(
                  Translate.s.percent_matched(value),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s20_w700(color: context.colors.black),
                );
              },
            ),
            Gaps.vGap32,
            AppTextButton.maxCustom(
              text: Translate.s.confirm,
              onPressed: onConfirm,
              bgColor: context.colors.green,
              txtColor: context.colors.white,
              textSize: Dimens.font_sp18,
              maxHeight: Dimens.buttonHeight,
              borderRadius: Dimens.borderRadius30PX,
            ),
          ],
        ),
      ),
    );
  }
}
