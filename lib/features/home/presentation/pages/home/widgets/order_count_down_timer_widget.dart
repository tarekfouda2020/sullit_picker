import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/custom_timer_widget.dart';

import 'home_widgets_imports.dart';

class OrderCountDownTimerWidget extends StatefulWidget {
  final HomeController controller;
  const OrderCountDownTimerWidget({super.key, required this.controller});

  @override
  State<OrderCountDownTimerWidget> createState() => _OrderCountDownTimerWidgetState();
}

class _OrderCountDownTimerWidgetState extends State<OrderCountDownTimerWidget> {
  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: widget.controller.timerObs,
      builder: (context,value) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTimerWidget(
              firstTimeNumber: widget.controller.getDigit(value.myDuration, 'days', 0),
              secondTimeNumber: widget.controller.getDigit(value.myDuration, 'days', 1),
              threeTimeNumber: widget.controller.getDigit(value.myDuration, 'days', 2),
              text:"days",
            ),
            _buildSeparatorText(context),
            CustomTimerWidget(
              firstTimeNumber: widget.controller.getDigit(value.myDuration, 'hours', 0),
              secondTimeNumber: widget.controller.getDigit(value.myDuration, 'hours', 1),
              text:"hours",
            ),
            _buildSeparatorText(context),
            CustomTimerWidget(
              firstTimeNumber: widget.controller.getDigit(value.myDuration, 'minutes', 0),
              secondTimeNumber: widget.controller.getDigit(value.myDuration, 'minutes', 1),
              text: "minutes",
            ),
            _buildSeparatorText(context),
            CustomTimerWidget(
              firstTimeNumber: widget.controller.getDigit(value.myDuration, 'seconds', 0),
              secondTimeNumber: widget.controller.getDigit(value.myDuration, 'seconds', 1),
              text: "Seconds",
            ),
          ],
        );
      }
    );
  }

  Widget _buildSeparatorText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        ":",
        style: AppTextStyle.s16_w300(color: context.colors.black),
      ),
    );
  }



}
