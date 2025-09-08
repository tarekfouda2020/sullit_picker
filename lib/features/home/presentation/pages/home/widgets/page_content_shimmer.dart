import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/circle_shimmer.dart';

import 'home_widgets_imports.dart';

class PageContentShimmer extends StatelessWidget {
  const PageContentShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Expanded(
          child: ListView(
            padding: Dimens.paddingH20Px,
            children: [
              _buildHeaderShimmer(context),
              Gaps.vGap14,
              _buildSearchBarShimmer(context),
              Gaps.vGap16,
              _buildOrderNotificationShimmer(context),
              _buildOrderPayStatusShimmer(context),
              Gaps.vGap20,
              _buildInfoSectionShimmer(context),
              Gaps.vGap12,
              _buildInfoSectionShimmer(context),
              Gaps.vGap12,
              _buildAddressSectionShimmer(context),
              Gaps.vGap50,
            ],
          ),
        ),
        _buildBottomNavShimmer(context),
        Gaps.vGap10,
      ],
    );
  }

  Widget _buildHeaderShimmer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                // Profile image shimmer
                const CircleShimmer(radius: 20),
                Gaps.hGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome text shimmer
                      BaseShimmerWidget(
                        child: Container(
                          width: 150,
                          height: 14,
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      Gaps.vGap4,
                      Row(
                        children: [
                          // ID shimmer
                          BaseShimmerWidget(
                            child: Container(
                              width: 60,
                              height: 14,
                              decoration: BoxDecoration(
                                color: context.colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          Gaps.hGap13,
                          // Status shimmer
                          BaseShimmerWidget(
                            child: Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                color: context.colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Notification icon shimmer
          const CircleShimmer(radius: 20),
        ],
      ),
    );
  }

  Widget _buildSearchBarShimmer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      height: 50,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius30PX,
        border: Border.all(color: context.colors.inputBorder),
      ),
      child: Row(
        children: [
          Expanded(
            child: BaseShimmerWidget(
              child: Container(
                height: 12,
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          Gaps.hGap8,
          // Switch shimmer
          BaseShimmerWidget(
            child: Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderNotificationShimmer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 13, bottom: 17),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.colors.lightBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Order code shimmer
          BaseShimmerWidget(
            child: Container(
              width: 100,
              height: 18,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Gaps.vGap8,
          // Store name shimmer
          BaseShimmerWidget(
            child: Container(
              width: 200,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Gaps.vGap9,
          // Time shimmer
          BaseShimmerWidget(
            child: Container(
              width: 120,
              height: 14,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderPayStatusShimmer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Payment status shimmer
        BaseShimmerWidget(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 11),
            width: 186,
            height: 40,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(8)),
            ),
          ),
        ),
        const SizedBox(height: 10),
        // Amount shimmer
        BaseShimmerWidget(
          child: Container(
            width: 120,
            height: 18,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSectionShimmer(BuildContext context) {
    return Column(
      children: [
        // Title shimmer
        BaseShimmerWidget(
          child: Container(
            width: 100,
            height: 14,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        Gaps.vGap6,
        // Content container shimmer
        Container(
          height: Dimens.dp44,
          padding: const EdgeInsetsDirectional.fromSTEB(18, 12, 14, 12),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius8PX,
            border: Border.all(color: context.colors.inputBorder),
          ),
          child: Row(
            children: [
              // Icon shimmer
              BaseShimmerWidget(
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Gaps.hGap12,
              Expanded(
                child: BaseShimmerWidget(
                  child: Container(
                    height: 14,
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAddressSectionShimmer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Address title shimmer
        BaseShimmerWidget(
          child: Container(
            width: 80,
            height: 14,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        Gaps.vGap6,
        // Address container shimmer
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius4PX,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Marker icon shimmer
              BaseShimmerWidget(
                child: Container(
                  width: 14,
                  height: 18,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Gaps.hGap14,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 6,
                  children: [
                    // Location shimmer
                    BaseShimmerWidget(
                      child: Container(
                        width: 200,
                        height: 14,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    // Address details shimmer
                    ...List.generate(5, (index) {
                      return Row(
                        children: [
                          BaseShimmerWidget(
                            child: Container(
                              width: 60,
                              height: 12,
                              decoration: BoxDecoration(
                                color: context.colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          Gaps.hGap8,
                          Expanded(
                            child: BaseShimmerWidget(
                              child: Container(
                                height: 12,
                                decoration: BoxDecoration(
                                  color: context.colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
              // Action buttons shimmer
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BaseShimmerWidget(
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  BaseShimmerWidget(
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavShimmer(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(3, (index) {
          return BaseShimmerWidget(
            child: Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          );
        }),
      ),
    );
  }
}
