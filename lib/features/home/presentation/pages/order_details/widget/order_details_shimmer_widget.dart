import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/reusable_shimmer_widgets.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/button_shimmer_widget.dart';

import 'widgets_imports.dart';

class OrderDetailsShimmerWidget extends StatelessWidget {
  const OrderDetailsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap(kToolbarHeight),
        _buildHeaderShimmer(context),
        Gaps.vGap12,
        _buildTimerCardShimmer(context),
        Gaps.vGap12,
        Expanded(
          child: _buildPickCategoryShimmer(context),
        ),
      ],
    );
  }

  Widget _buildHeaderShimmer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Back arrow shimmer
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
            Gaps.hGap14,
            // Order number shimmer
            const TextShimmer(lineWidthPercent: 0.4),
            Gaps.hGap8,
            const TextShimmer(lineWidthPercent: 0.6),
          ],
        ),
        Gaps.vGap8,
        const Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 38),
                child: TextShimmer(lineWidthPercent: 0.7),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimerCardShimmer(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20Px,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.inputBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left items shimmer
          const LeftItemsShimmerWidget(),
          Gaps.vGap12,
          Column(
            children: [
              const TextShimmer(lineWidthPercent: 0.6),
              Gaps.vGap15,
              const TimerShimmerWidget(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPickCategoryShimmer(BuildContext context) {
    return ListView.builder(
      itemCount: 3, // Show 3 shimmer items
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category header shimmer
            const CategoryShimmerWidget(),
            Gaps.vGap12,
            // Product card shimmer
            const ProductCardShimmerWidget(),
            Gaps.vGap20,
          ],
        );
      },
    );
  }
}

