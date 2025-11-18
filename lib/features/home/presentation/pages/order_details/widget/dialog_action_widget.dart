import 'widgets_imports.dart';

class DialogActionWidget extends StatelessWidget {
  final String description;
  final String? buttonGreenTitle;
  final String? buttonRedTitle;
  final void Function() greenOnTap;
  final void Function()? redOnTap;

  const DialogActionWidget(
      {super.key,
      required this.description,
       this.buttonGreenTitle,
       this.buttonRedTitle,
      required this.greenOnTap,
      this.redOnTap});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
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
              description,
              style: AppTextStyle.s18_w700(color: context.colors.black).copyWith(height: 1.2),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap24,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: AppTextButton.minCustom(
                    text: buttonGreenTitle ?? Translate.s.confirm,
                    onPressed: greenOnTap,
                    bgColor: context.colors.appGreen,
                    maxHeight: 40,
                    txtColor: context.colors.white,
                    textSize: 16,
                  ),
                ),
                Gaps.hGap8,
                Expanded(
                  child: AppTextButton.minCustom(
                    text: buttonRedTitle ??Translate.s.cancel,
                    onPressed: redOnTap ?? ()=>  Navigator.pop(context),
                    bgColor: context.colors.white,
                    borderColor: context.colors.primary,
                    maxHeight: 40,
                    txtColor: context.colors.primary,
                    textSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
