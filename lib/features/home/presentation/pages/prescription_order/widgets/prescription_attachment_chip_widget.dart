import 'package:flutter_tdd/core/helpers/export.dart';

class PrescriptionAttachmentChipWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const PrescriptionAttachmentChipWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: context.colors.primary.withValues(alpha: 0.08),
          borderRadius: Dimens.borderRadius20PX,
          border: Border.all(
            color: context.colors.primary.withValues(alpha: 0.4),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: context.colors.primary),
            Gaps.hGap5,
            Text(
              label,
              style: AppTextStyle.s12_w500(color: context.colors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
