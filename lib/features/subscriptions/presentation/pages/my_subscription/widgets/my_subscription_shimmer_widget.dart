import 'subscription_widgets_imports.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class MySubscriptionShimmerWidget extends StatelessWidget {
  const MySubscriptionShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH20Px,
      child: Column(
        children: [
          Gaps.vGap20,
          // SubscriptionContentWidget shimmer
          Container(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 19),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius12PX,
              border: Border.all(color: context.colors.borderLight),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Price shimmer
                BaseShimmerWidget(
                  child: Row(
                    children: [
                      Container(
                        height: 22,
                        width: 80,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: Dimens.borderRadius4PX,
                        ),
                      ),
                      Gaps.hGap8,
                      Container(
                        height: 22,
                        width: 60,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: Dimens.borderRadius4PX,
                        ),
                      ),
                    ],
                  ),
                ),
                Gaps.vGap12,
                // Benefits title shimmer
                BaseShimmerWidget(
                  child: Container(
                    height: 14,
                    width: 70,
                    decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.borderRadius4PX
                    ),
                  ),
                ),
                Gaps.vGap8,
                ...List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: BaseShimmerWidget(
                    child: Row(
                      children: [
                        Container(
                          width: 2,
                          height: 2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colors.white,
                          ),
                        ),
                        Gaps.hGap8,
                        Expanded(
                          child: Container(
                            height: 12,
                            decoration: BoxDecoration(
                              color: context.colors.white,
                              borderRadius:Dimens.borderRadius4PX,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
                Gaps.vGap10,
                // Divider shimmer
                BaseShimmerWidget(
                  child: Container(
                    height: 1,
                    color: context.colors.white,
                  ),
                ),
                Gaps.vGap10,
                BaseShimmerWidget(
                  child: Container(
                    height: 14,
                    width: 150,
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius:Dimens.borderRadius4PX,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap20,
          BaseShimmerWidget(
            child: Container(
              height: 48,
              width: MediaQuery.sizeOf(context).width,
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
