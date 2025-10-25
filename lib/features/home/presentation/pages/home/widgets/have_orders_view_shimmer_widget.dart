import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/circle_shimmer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/reusable_shimmer_widgets.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/button_shimmer_widget.dart';

import 'home_widgets_imports.dart';

class HaveOrdersViewShimmerWidget extends StatelessWidget {
  const HaveOrdersViewShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHomeHeaderShimmer(context),
        Gaps.vGap14,
        _buildSearchBarShimmer(context),
        _buildAssignedOrdersShimmer(context),
        Gaps.vGap10,
        Expanded(
          child: ListView(
            children: [
              // Generate 3 shimmer order cards
              ...List.generate(3, (index) => _buildOrderCardShimmer(context)),
              Gaps.vGap20,
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHomeHeaderShimmer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                // Avatar shimmer
                const CircleShimmer(radius: 60),
                Gaps.hGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome text shimmer
                      const TextShimmer(lineWidthPercent: 0.6),
                      Gaps.vGap4,
                      // User ID shimmer
                      const TextShimmer(lineWidthPercent: 0.3),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Notification icon shimmer
          BaseShimmerWidget(
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius12PX,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBarShimmer(BuildContext context) {
    return BaseShimmerWidget(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        height: 50,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius30PX,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 14,
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            Gaps.hGap12,
            // Switch shimmer
            Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius30PX,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAssignedOrdersShimmer(BuildContext context) {
    return BaseShimmerWidget(
      child: Container(
        height: Dimens.dp44,
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius30PX,
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
            Gaps.hGap4,
            Container(
              width: 20,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderCardShimmer(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20Px,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.inputBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order number section
          const TextShimmer(lineWidthPercent: 0.8),
          Gaps.vGap8,
          // Assigned time shimmer
          const TextShimmer(lineWidthPercent: 0.5),
          Gaps.vGap15,
          // Progress bar shimmer
          const LeftItemsShimmerWidget(),
          Gaps.vGap15,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextShimmer(lineWidthPercent: 0.7),
            ],
          ),
          Gaps.vGap18,
          // Countdown timer shimmer
          const TimerShimmerWidget(),
          Gaps.vGap24,
          // Button shimmer
          const ButtonShimmerWidget(),
        ],
      ),
    );
  }

}
