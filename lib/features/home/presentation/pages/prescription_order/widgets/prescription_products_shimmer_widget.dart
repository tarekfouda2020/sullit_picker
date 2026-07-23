import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

class PrescriptionProductsShimmerWidget extends StatelessWidget {
  const PrescriptionProductsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, __) => const Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: _ScannedProductShimmerItem(),
      ),
    );
  }
}

class _ScannedProductShimmerItem extends StatelessWidget {
  const _ScannedProductShimmerItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BaseShimmerWidget(
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Gaps.hGap10,
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextShimmer(lineWidthPercent: 0.75),
                    TextShimmer(lineWidthPercent: 0.45),
                  ],
                ),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            children: [
              Expanded(
                child: BaseShimmerWidget(
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: Dimens.borderRadius8PX,
                    ),
                  ),
                ),
              ),
              Gaps.hGap8,
              BaseShimmerWidget(
                child: Container(
                  width: 80,
                  height: 36,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: Dimens.borderRadius8PX,
                  ),
                ),
              ),
            ],
          ),
          Gaps.vGap10,
          const TextShimmer(lineWidthPercent: 0.5),
        ],
      ),
    );
  }
}
