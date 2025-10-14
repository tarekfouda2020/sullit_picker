import 'widgets_imports.dart';

class DialogActionWidget extends StatelessWidget {
  final String description;
  final String buttonGreenTitle;
  final String buttonRedTitle;
  final void Function() greenOnTap;
  final void Function() redOnTap;

  const DialogActionWidget(
      {super.key,
      required this.description,
      required this.buttonGreenTitle,
      required this.buttonRedTitle,
      required this.greenOnTap,
      required this.redOnTap});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
      content: Column(
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
            style: AppTextStyle.s18_w700(color: context.colors.textColor)
                .copyWith(height: 1.2),
            textAlign: TextAlign.center,
          ),
          Gaps.vGap24,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: AppTextButton.minCustom(
                  text: buttonGreenTitle,
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
                  text: buttonRedTitle,
                  onPressed: redOnTap,
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
    );
  }
}
