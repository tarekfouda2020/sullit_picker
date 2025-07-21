import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/circle_shimmer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

class WorkTypeShimmerWidget extends StatelessWidget {
  const WorkTypeShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (index) => _buildShimmerItem(context)),
    );
  }

  Widget _buildShimmerItem(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: context.colors.white,
        border: Border.all(
          color: context.colors.borderLight,
        ),
      ),
      child: Row(
        children: [
          // Radio button shimmer
          BaseShimmerWidget(
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: context.colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: context.colors.borderLight,
                  width: 2,
                ),
              ),
            ),
          ),
          Gaps.hGap10,
          // Text shimmer
          Expanded(
            child: BaseShimmerWidget(
              child: Container(
                width: double.infinity,
                height: 16,
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
