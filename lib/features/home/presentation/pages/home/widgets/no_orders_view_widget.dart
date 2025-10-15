import 'assigned_orders_widget.dart';
import 'home_widgets_imports.dart';

class NoOrdersViewWidget extends StatelessWidget {
  const NoOrdersViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Res.noOrdersAvailable,
              width: 123,
              height: 152,
            ),
            Text(
              Translate.of(context).you_have_no_orders_now,
              style: AppTextStyle.s16_w400(color: context.colors.primary),
            )
          ],
        ),
      ),
    );
  }
}
