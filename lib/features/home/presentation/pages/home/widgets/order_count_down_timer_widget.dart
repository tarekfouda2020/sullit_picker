import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/home/domain/entity/timer_entity.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/custom_timer_widget.dart';

import '../home_imports.dart';
import 'home_widgets_imports.dart';

class OrderCountDownTimerWidget extends StatefulWidget {
  final DateTime pickWithinTime;
  const OrderCountDownTimerWidget({super.key, required this.pickWithinTime, });

  @override
  State<OrderCountDownTimerWidget> createState() => _OrderCountDownTimerWidgetState();
}

class _OrderCountDownTimerWidgetState extends State<OrderCountDownTimerWidget> {


 late ObsValue<TimerEntity> timerObs;

  @override
  void initState() {
    super.initState();
    timerObs = ObsValue<TimerEntity>.withInit(TimerEntity());
    timerObs.getValue().initDuration(widget.pickWithinTime);
    timerObs.getValue().startTimer(callback: () {
      timerObs.setValue(timerObs.getValue());
      timerObs.refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: timerObs,
      builder: (context,value) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTimerWidget(
              firstTimeNumber: value.getDigit( 'minutes', 0),
              secondTimeNumber: value.getDigit( 'minutes', 1),
              text: "Minutes",
            ),
            _buildSeparatorText(context),
            CustomTimerWidget(
              firstTimeNumber: value.getDigit( 'seconds', 0),
              secondTimeNumber: value.getDigit( 'seconds', 1),
              text: "Seconds",
            ),
          ],
        );
      }
    );
  }

  Widget _buildSeparatorText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        " : ",
        style: AppTextStyle.s16_w300(color: context.colors.black),
      ),
    );
  }



}
