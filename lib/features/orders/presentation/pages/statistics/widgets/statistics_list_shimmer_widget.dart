import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

import 'statistics_widgets_imports.dart';

class StatisticsListShimmerWidget extends StatelessWidget {
  const StatisticsListShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 12,
        children: List.generate(3, (index) {
      return  Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: context.colors.borderLight),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextShimmer(lineWidthPercent: 0.5,),
                  Gaps.vGap12,
                  BaseShimmerWidget(
                      child: Container(
                        width: 27, height: 27,
                        decoration:  BoxDecoration(
                            borderRadius: Dimens.borderRadius4PX,
                            color: context.colors.white
                        ),
                      )),
                ],
              ),
            ),
            BaseShimmerWidget(
                child: Container(
                  width: 48, height: 48,
                  decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: Dimens.borderRadius12PX
                  ),
                ))
          ],
        ),
      );
    },
      ),
    ));
  }
}
