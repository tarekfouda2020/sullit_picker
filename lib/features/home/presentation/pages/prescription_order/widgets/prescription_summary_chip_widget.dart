import 'package:flutter/cupertino.dart';
import '../../../../../../core/helpers/export.dart';

class PrescriptionSummaryChipWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget valueWidget;
  final VoidCallback? onTap;

  const PrescriptionSummaryChipWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.valueWidget,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: context.colors.primary.withValues(alpha: 0.08),
          borderRadius: Dimens.borderRadius8PX,
          border: Border.all(color: context.colors.primary.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 13, color: context.colors.primary),
            Gaps.hGap4,
            Text(
              '$label: ',
              style: AppTextStyle.s12_w300(color: context.colors.simiGray),
            ),
            valueWidget,
          ],
        ),
      ),
    );
  }
}
