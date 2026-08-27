part of '../in_store_scanner_imports.dart';

class ExtraItemConfirmDialogWidget extends StatelessWidget {
  final VoidCallback onYes;
  final VoidCallback onNo;

  const ExtraItemConfirmDialogWidget({
    super.key,
    required this.onYes,
    required this.onNo,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Res.warningIcon,
              width: 61,
              height: 61,
            ),
            Gaps.vGap21,
            Text(
              Translate.s.item_not_in_order_add_extra,
              style: AppTextStyle.s18_w700(color: context.colors.black)
                  .copyWith(height: 1.2),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap24,
            Row(
              children: [
                Expanded(
                  child: AppTextButton.minCustom(
                    text: Translate.s.confirm,
                    onPressed: onYes,
                    bgColor: context.colors.appGreen,
                    maxHeight: 40,
                    txtColor: context.colors.white,
                    textSize: 16,
                    borderRadius: Dimens.borderRadius30PX,
                  ),
                ),
                Gaps.hGap8,
                Expanded(
                  child: AppTextButton.minCustom(
                    text: Translate.s.cancel,
                    onPressed: onNo,
                    bgColor: context.colors.white,
                    borderColor: context.colors.primary,
                    maxHeight: 40,
                    txtColor: context.colors.primary,
                    textSize: 16,
                    borderRadius: Dimens.borderRadius30PX,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
