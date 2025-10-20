import 'dart:convert';

import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/home/domain/entity/timer_entity.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/custom_timer_widget.dart';

import '../home_imports.dart';
import 'home_widgets_imports.dart';

class OrderCountDownTimerWidget extends StatefulWidget {
  final DateTime pickWithinTime;
  final void Function(Duration duration)? duringCountDown;
  const OrderCountDownTimerWidget({super.key, required this.pickWithinTime,  this.duringCountDown, });

  @override
  State<OrderCountDownTimerWidget> createState() => _OrderCountDownTimerWidgetState();
}

class _OrderCountDownTimerWidgetState extends State<OrderCountDownTimerWidget> {


 late ObsValue<TimerEntity> timerObs;

 @override
 void initState() {
   super.initState();
   timerObs = ObsValue<TimerEntity>.withInit(TimerEntity());

   // Read stored time safely
   final existTime = HiveHelper.instance.getDataFromBox<String>(
     HiveBoxesNames.orders,
     key: HiveBoxesKeys.orderEndDate,
   );

   DateTime pickTime;

   if (existTime != null && existTime.isNotEmpty) {
     try {
       final json = jsonDecode(existTime) as Map<String, dynamic>;
       final storedEndTime = json["end_time"];
       if (storedEndTime != null) {
         pickTime = storedEndTime;
       } else {
         pickTime = widget.pickWithinTime;
       }
     } catch (e) {
       // In case decoding fails for any reason
       pickTime = widget.pickWithinTime;
     }
   } else {
     pickTime = widget.pickWithinTime;
   }

   // Initialize and start timer
   timerObs.getValue().initDuration(pickTime);
   timerObs.getValue().startTimer(callback: () {
     timerObs.setValue(timerObs.getValue());
     timerObs.refresh();
     widget.duringCountDown?.call(timerObs.getValue().myDuration);
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
