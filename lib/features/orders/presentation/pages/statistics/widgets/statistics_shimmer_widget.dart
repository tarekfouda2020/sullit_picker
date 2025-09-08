import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

import 'statistics_list_shimmer_widget.dart';
import 'statistics_widgets_imports.dart';

class StatisticsShimmerWidget extends StatelessWidget {
  const StatisticsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius30PX,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: [
              BaseShimmerWidget(
                  child: Container(
                    width: 20, height: 20,
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: Dimens.borderRadius4PX
                    ),
                  )
              ),
              Gaps.hGap8,
              const TextShimmer(lineWidthPercent: 0.7,),
              const Spacer(),
              BaseShimmerWidget(
                  child: Container(
                    width: 11, height: 9,
                    decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.borderRadius4PX
                    ),
                  )
              ),
            ],
          ),
        ),
       const StatisticsListShimmerWidget()
      ],
    );
  }
}
