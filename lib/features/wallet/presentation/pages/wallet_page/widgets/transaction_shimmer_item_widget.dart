import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

import 'wallet_widgets_imports.dart';

class TransactionShimmerItemWidget extends StatelessWidget {
  const TransactionShimmerItemWidget({super.key});

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
          const TextShimmer(
            lineWidthPercent: 0.6,
          ),
          Gaps.vGap12,
          const TextShimmer(
            lineWidthPercent: 0.4,
          ),
          Gaps.vGap12,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextShimmer(
                lineWidthPercent: 0.6,
              ),
              TextShimmer(
                lineWidthPercent: 0.2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
