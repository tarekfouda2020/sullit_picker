import 'package:flutter_tdd/core/helpers/export.dart';

class NotificationSettingsDialogWidget extends StatelessWidget {
  final String statusText;
  final VoidCallback onSettingsPressed;

  const NotificationSettingsDialogWidget({
    super.key,
    required this.statusText,
    required this.onSettingsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: const EdgeInsets.all(24),
      backgroundColor: context.colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            statusText,
            style: AppTextStyle.s18_w700(color: context.colors.black),
            textAlign: TextAlign.center,
          ),
          Gaps.vGap12,
          Text(
            Translate.s.notifications_description,
            style: AppTextStyle.s14_w400(color: context.colors.textSecondary).copyWith(
              height: 1.4
            ),
            textAlign: TextAlign.start,
          ),
          Gaps.vGap24,
          Row(
            children: [
              Expanded(
                child: AppTextButton.minCustom(
                  text: Translate.s.cancel,
                  onPressed: () => Navigator.pop(context),
                  bgColor: context.colors.white,
                  txtColor: context.colors.black,
                  borderColor: context.colors.borderColor,
                  maxHeight: 42,
                ),
              ),
              Gaps.hGap12,
              Expanded(
                child: AppTextButton.minPrimary(
                  text: Translate.s.settings,
                  onPressed: () {
                    Navigator.pop(context);
                    onSettingsPressed();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
