import 'package:flutter_tdd/core/helpers/export.dart';

class ConfirmDeleteDialogWidget extends StatelessWidget {
  final String content;
  final void Function() onTap;

  const ConfirmDeleteDialogWidget({super.key, required this.onTap, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.only(right: 15, left: 15, bottom: 130),
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        decoration: BoxDecoration(color: context.colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              content,
              style: AppTextStyle.s18_w700(
                color: context.colors.blackOpacity,
              ).copyWith(height: 1.3),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap16,
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      Translate.s.confirm,
                      style: AppTextStyle.s18_w500(
                        color: context.colors.darkRed,
                      ),
                    ),
                  ),
                  Gaps.hGap22,
                  SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      color: context.colors.black,
                      thickness: 1,
                    ),
                  ),
                  Gaps.hGap22,
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      Translate.s.cancel,
                      style: AppTextStyle.s18_w500(
                        color: context.colors.green,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
