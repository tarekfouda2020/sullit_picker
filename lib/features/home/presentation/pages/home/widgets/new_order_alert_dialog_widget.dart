import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'home_widgets_imports.dart';

class NewOrderAlertWidget extends StatelessWidget {
  const NewOrderAlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
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
            Text("New Order Alert",
            style: AppTextStyle.s28_w800(color: context.colors.primary),
            ),
            Gaps.vGap38,
            AppTextButton.maxPrimary(text: "View Order",onPressed: ()=>Navigator.pop(context),),
            Gaps.vGap10
          ],
        ),
      ),
    );
  }
} 