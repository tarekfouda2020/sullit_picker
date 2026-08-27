part of '../in_store_scanner_imports.dart';

class MatchingResultsSheetHeaderWidget extends StatelessWidget {
  final InStoreScannerController controller;

  const MatchingResultsSheetHeaderWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Translate.s.matching_results,
          textAlign: TextAlign.center,
          style: AppTextStyle.s20_w700(color: context.colors.black),
        ),
        Gaps.vGap16,
        OrderNumberBadgeWidget(
          orderNo: controller.orderNo,
          expand: false,
        ),
        Gaps.vGap20,
        SvgPicture.asset(
          Res.warningIcon,
          width: Dimens.dp96,
          height: Dimens.dp96,
        ),
        Gaps.vGap16,
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
        Gaps.vGap16,
        Gaps.line,
      ],
    );
  }
}
