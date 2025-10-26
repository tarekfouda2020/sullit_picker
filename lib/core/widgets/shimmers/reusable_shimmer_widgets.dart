import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/button_shimmer_widget.dart';

import '../../../../core/helpers/export.dart';

/// Reusable timer shimmer widget for countdown timers
class TimerShimmerWidget extends StatelessWidget {
  const TimerShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Timer digits shimmer
          ...List.generate(2, (index) {
            return BaseShimmerWidget(
              child: Container(
                width: 44,
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),
            );
          }),
          Gaps.hGap10,
          BaseShimmerWidget(
            child: Container(
              width: 8,
              height: 20,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
            ),
          ),
          Gaps.hGap10,
          ...List.generate(2, (index) {
            return BaseShimmerWidget(
              child: Container(
                width: 44,
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

/// Reusable left items shimmer widget for progress indicators
class LeftItemsShimmerWidget extends StatelessWidget {
  const LeftItemsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Progress bar container
        BaseShimmerWidget(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius12PX,
            ),
          ),
        ),
        Gaps.vGap8,
        // Left items text shimmer
        const TextShimmer(lineWidthPercent: 0.4),
      ],
    );
  }
}

/// Reusable product card shimmer widget for item cards
class ProductCardShimmerWidget extends StatelessWidget {
  const ProductCardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Product image shimmer
              BaseShimmerWidget(
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Gaps.hGap10,
              // Product name shimmer
              const Expanded(
                child: TextShimmer(lineWidthPercent: 0.8),
              ),
            ],
          ),
          Gaps.vGap12,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Pick button shimmer
              const Expanded(
                child: ButtonShimmerWidget(),
              ),
              Gaps.hGap6,
              // Quantity section shimmer
              Column(
                children: [
                  const TextShimmer(lineWidthPercent: 0.3),
                  Gaps.vGap8,
                  BaseShimmerWidget(
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.borderRadius12PX,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Gaps.vGap13,
          // Picked percentage shimmer
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextShimmer(lineWidthPercent: 0.5),
            ],
          ),
        ],
      ),
    );
  }
}

/// Reusable category shimmer widget for category headers
class CategoryShimmerWidget extends StatelessWidget {
  const CategoryShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextShimmer(lineWidthPercent: 0.6),
        ),
        Gaps.hGap12,
        const TextShimmer(lineWidthPercent: 0.4),
      ],
    );
  }
}

