import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class PrescriptionAttachmentsShimmerWidget extends StatelessWidget {
  const PrescriptionAttachmentsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseShimmerWidget(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius20PX,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius4PX,
              ),
            ),
            Gaps.hGap6,
            Container(
              width: 90,
              height: 12,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius4PX,
              ),
            ),
            Gaps.hGap4,
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius4PX,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
