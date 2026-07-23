import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/circle_shimmer.dart';

class PrescriptionCustomerCardShimmerWidget extends StatelessWidget {
  const PrescriptionCustomerCardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius8PX,
        border: Border.all(color: context.colors.borderLight),
      ),
      child: Row(
        children: [
          const CircleShimmer(radius: 26),
          Gaps.hGap8,
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextShimmer(lineWidthPercent: 0.6),
                TextShimmer(lineWidthPercent: 0.35),
              ],
            ),
          ),
          BaseShimmerWidget(
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius8PX,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
