import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class OrderHistoryDetailsShimmer extends StatelessWidget {
  const OrderHistoryDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const _InfoSectionShimmer(),
        Gaps.vGap24,
        const _ProductsSectionShimmer(),
        Gaps.vGap24,
        const _InvoiceSectionShimmer(),
        Gaps.vGap32,
      ],
    );
  }
}

class _InfoSectionShimmer extends StatelessWidget {
  const _InfoSectionShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        border: Border.all(color: context.colors.borderLight, width: 1.3),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            height: 45,
            padding: const EdgeInsets.all(12),
            color: context.colors.primary.withOpacity(0.1),
            child: Center(
              child: BaseShimmerWidget(
                child: Container(
                  width: 120,
                  height: 20,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: Dimens.paddingAll16Px,
            child: Column(
              children: List.generate(
                  5,
                  (index) => const Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: TextShimmer(lineWidthPercent: 0.8)),
                          ],
                        ),
                      )),
            ),
          ),
          // Customer Info
          Container(
            padding: Dimens.paddingAll16Px,
            color: context.colors.offWhite,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BaseShimmerWidget(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Gaps.hGap10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextShimmer(lineWidthPercent: 0.5),
                          Gaps.vGap8,
                          const TextShimmer(lineWidthPercent: 0.3),
                        ],
                      ),
                    )
                  ],
                ),
                Gaps.line,
                const Row(children: [
                  Expanded(child: TextShimmer(lineWidthPercent: 0.4))
                ]),
                Gaps.line,
                Row(
                  children: [
                    BaseShimmerWidget(
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Gaps.hGap10,
                    const Expanded(child: TextShimmer(lineWidthPercent: 0.6))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ProductsSectionShimmer extends StatelessWidget {
  const _ProductsSectionShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight, width: 1.3),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          // Header
          Container(
            height: 50,
            color: context.colors.catCardColor,
            child: Center(
              child: BaseShimmerWidget(
                child: Container(
                  width: 100,
                  height: 20,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: List.generate(
                3,
                (index) => const Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: _ProductItemShimmer(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ProductItemShimmer extends StatelessWidget {
  const _ProductItemShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colors.borderLight.withOpacity(0.5)),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BaseShimmerWidget(
            child: Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Gaps.hGap12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: TextShimmer(lineWidthPercent: 0.3)),
                    SizedBox(child: TextShimmer(lineWidthPercent: 0.4)),
                  ],
                ),
                Gaps.vGap8,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextShimmer(lineWidthPercent: 0.5),
                    TextShimmer(lineWidthPercent: 0.5),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InvoiceSectionShimmer extends StatelessWidget {
  const _InvoiceSectionShimmer();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextShimmer(lineWidthPercent: 1.0),
        Gaps.vGap10,
        Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius12PX,
            border: Border.all(color: context.colors.borderLight, width: 1.3),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Padding(
                padding: Dimens.paddingAll16Px,
                child: Column(
                  children: List.generate(
                      4,
                      (index) => const Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: TextShimmer(lineWidthPercent: 0.4)),
                                TextShimmer(lineWidthPercent: 1.0),
                              ],
                            ),
                          )),
                ),
              ),
              Container(
                padding: Dimens.paddingAll16Px,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BaseShimmerWidget(
                      child: Container(
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    BaseShimmerWidget(
                      child: Container(
                        width: 80,
                        height: 20,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
