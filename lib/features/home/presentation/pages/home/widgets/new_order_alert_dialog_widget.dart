import 'home_widgets_imports.dart';

class NewOrderAlertWidget extends StatelessWidget {
  final void Function() onPressApply;
  const NewOrderAlertWidget({super.key, required this.onPressApply});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      // key: ,
      content: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius30PX,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Res.notificationBill),
            Text(Translate.of(context).new_order_alert,
            style: AppTextStyle.s28_w800(color: context.colors.primary),
            ),
            Gaps.vGap38,
            AppTextButton.maxPrimary(
              text: Translate.of(context).view_order,
              onPressed: ()=> _onPressApply(context)
            ),
            Gaps.vGap10
          ],
        ),
      ),
    );
  }

  void _onPressApply(BuildContext context) {
     Navigator.pop(context);
     onPressApply.call();
  }





}