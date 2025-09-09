import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/circle_shimmer.dart';

class OrderHistoryCardShimmer extends StatelessWidget {
  const OrderHistoryCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(19, 16, 24, 16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order ID shimmer
          BaseShimmerWidget(
            child: Container(
              width: 120,
              height: 20,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Gaps.vGap5,
          
          // Store name shimmer
          Row(
            children: [
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
              Gaps.hGap8,
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
          Gaps.vGap7,
          
          // Order amount and payment method shimmer
          Row(
            children: [
              Expanded(
                child: BaseShimmerWidget(
                  child: Container(
                    height: 18,
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              Gaps.hGap8,
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
            ],
          ),
          Gaps.vGap12,
          
          // Acceptance time shimmer
          _buildInfoShimmer(context),
          Gaps.vGap4,
          
          // Delivered time or failed reason shimmer
          _buildInfoShimmer(context),
          Gaps.vGap4,
          
          // Status shimmer
          _buildInfoShimmer(context),
          Gaps.vGap4,
          
          // Customer info shimmer
          _buildInfoShimmer(context),
        ],
      ),
    );
  }

  Widget _buildInfoShimmer(BuildContext context) {
    return Row(
      children: [
        BaseShimmerWidget(
          child: Container(
            width: 80,
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
  }
}

