import 'package:flutter_tdd/core/helpers/export.dart';

class AttachmentRowItem {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const AttachmentRowItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });
}

class PrescriptionAttachmentsSheetWidget extends StatelessWidget {
  final List<AttachmentRowItem> items;

  const PrescriptionAttachmentsSheetWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      padding: Dimens.paddingAll16Px,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Translate.s.attachments,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          Gaps.vGap16,
          Container(
            decoration: BoxDecoration(
              color: context.colors.background,
              borderRadius: Dimens.borderRadius12PX,
              border: Border.all(color: context.colors.borderLight),
            ),
            child: Column(
              children: List.generate(items.length, (i) {
                final item = items[i];
                final bool isLast = i == items.length - 1;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: item.onTap,
                      borderRadius: isLast
                          ? const BorderRadius.vertical(bottom: Radius.circular(12))
                          : BorderRadius.zero,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                        child: Row(
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: context.colors.primary.withValues(alpha: 0.1),
                                borderRadius: Dimens.borderRadius8PX,
                              ),
                              child: Icon(item.icon, size: 18, color: context.colors.primary),
                            ),
                            Gaps.hGap12,
                            Expanded(
                              child: Text(
                                item.label,
                                style: AppTextStyle.s14_w500(color: context.colors.black),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                              color: context.colors.simiGray,
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (!isLast)
                      Divider(height: 1, thickness: 1, color: context.colors.borderLight),
                  ],
                );
              }),
            ),
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
