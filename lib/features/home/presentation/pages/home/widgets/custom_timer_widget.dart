import 'home_widgets_imports.dart';

class CustomTimerWidget extends StatelessWidget {
  final String firstTimeNumber;
  final String secondTimeNumber;
  final String? threeTimeNumber;
  final String text;

  const CustomTimerWidget({
    super.key,
    required this.firstTimeNumber,
    required this.secondTimeNumber,
    this.threeTimeNumber,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            _buildContainer(context, firstTimeNumber),
            _buildContainer(context, secondTimeNumber),
            if (threeTimeNumber != "0" && threeTimeNumber != "" && threeTimeNumber != "null" && threeTimeNumber != null)
              _buildContainer(context, threeTimeNumber!),
          ],
        ),
        Gaps.vGap3,
        Text(
          text,
          style: AppTextStyle.s14_w300(color: context.colors.primary),
        )
      ],
    );
  }

  Container _buildContainer(BuildContext context, String time) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.symmetric(horizontal: 6.5),
      alignment: Alignment.center,
      width: Dimens.dp44,
      height: Dimens.dp44,
      decoration: BoxDecoration(
        color: context.colors.lightPrimary.withOpacity(0.3),
        borderRadius: Dimens.borderRadius12PX,
      ),
      child: Text(
        time,
        style:AppTextStyle.s14_w300(color: context.colors.primary),
      ),
    );
  }
}
