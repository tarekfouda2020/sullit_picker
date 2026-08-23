import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';

class ScannedProductActionChipWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? value;
  final bool filled;
  final VoidCallback? onTap;

  const ScannedProductActionChipWidget({
    super.key,
    required this.icon,
    required this.label,
    this.value,
    required this.filled,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = filled ? context.colors.primary : context.colors.simiGray;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: filled
              ? context.colors.primary.withValues(alpha: 0.1)
              : context.colors.background,
          borderRadius: Dimens.borderRadius8PX,
          border: Border.all(color: color, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: color),
            Gaps.hGap4,
            Text(
              value ?? label,
              style: AppTextStyle.s12_w400(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
