import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

class PrescriptionSearchShimmerWidget extends StatelessWidget {
  const PrescriptionSearchShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: List.generate(3, (index) {
        return const _SearchResultShimmerItem();
      },),
    );
  }
}

class _SearchResultShimmerItem extends StatelessWidget {
  const _SearchResultShimmerItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Row(
        children: [
          BaseShimmerWidget(
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: context.colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Gaps.hGap12,
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextShimmer(lineWidthPercent: 0.8),
                TextShimmer(lineWidthPercent: 0.4),
              ],
            ),
          ),
          Gaps.hGap8,
          BaseShimmerWidget(
            child: Container(
              width: 36,
              height: 36,
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
