import 'home_widgets_imports.dart';
class TimePickingWidget extends StatelessWidget {
  const TimePickingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Must Picking within',
          style: AppTextStyle.s16_w300(color: context.colors.black),
        ),
        Gaps.vGap16,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.lightPrimary.withOpacity(0.3),
                borderRadius: Dimens.borderRadius12PX,
              ),
              child: Text(
                '1',
                style: AppTextStyle.s18_w600(color: context.colors.primary),
              ),
            ),
            Gaps.hGap8,
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.lightPrimary.withOpacity(0.3),
                borderRadius: Dimens.borderRadius12PX,
              ),
              child: Text(
                '2',
                style: AppTextStyle.s18_w600(color: context.colors.primary),
              ),
            ),
            Text(
              ' : ',
              style: AppTextStyle.s16_w300(color: context.colors.black),
            ),
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.lightPrimary.withOpacity(0.3),
                borderRadius: Dimens.borderRadius12PX,
              ),
              child: Text(
                '3',
                style: AppTextStyle.s18_w600(color: context.colors.primary),
              ),
            ),
            Gaps.hGap8,
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.lightPrimary.withOpacity(0.3),
                borderRadius: Dimens.borderRadius12PX,
              ),
              child: Text(
                '5',
                style: AppTextStyle.s18_w600(color: context.colors.primary),
              ),
            ),
          ],
        ),
        Gaps.vGap8,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Minutes',
              style: AppTextStyle.s14_w300(color: context.colors.primary),
            ),
            Gaps.hGap50,
            Gaps.hGap8,
            Text(
              'Seconds',
              style: AppTextStyle.s14_w300(color: context.colors.primary),
            ),
          ],
        ),
        Gaps.vGap16,
        AppTextButton.maxCustom(
          text: 'Continue Picking',
          maxHeight: 44,
          textSize: 18,
          onPressed: () {
            AutoRouter.of(context).push(OrderDetailsRouteName());
          },
        )
      ],
    );
  }
}
