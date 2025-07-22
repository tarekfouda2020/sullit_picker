import 'subscription_widgets_imports.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class SubscriptionShimmerWidget extends StatelessWidget {
  const SubscriptionShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH20Px,
      child: Column(
        children: [
          // Slogan shimmer
          BaseShimmerWidget(
            child: Container(
              height: 30,
              width: 170,
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: context.colors.disableGray,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Gaps.vGap64,
          // Title shimmer
          BaseShimmerWidget(
            child: Container(
              height: 24,
              width: 200,
              decoration:  BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius8PX,
              ),
            ),
          ),
          Gaps.vGap30,
          // PlanBudgetWidget shimmer
          BaseShimmerWidget(
            child: Container(
              height: 125,
              decoration:  BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius16PX,
              ),
            ),
          ),
          Gaps.vGap17,
          // PlanBenefitsWidget shimmer
          BaseShimmerWidget(
            child: Container(
              height: 80,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color:context.colors.white,
                borderRadius: Dimens.borderRadius12PX,
              ),
            ),
          ),
          Gaps.vGap16,
          // Terms shimmer
          Row(
            children: [
              BaseShimmerWidget(
                child: Container(
                  height: 20,
                  width: 160,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: Dimens.borderRadius8PX,
                  ),
                ),
              ),
            ],
          ),
          Gaps.vGap41,
          // Button shimmer
          BaseShimmerWidget(
            child: Container(
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius30PX,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
