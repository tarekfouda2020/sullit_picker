import 'dart:async';
import 'dart:ui';

class TimerEntity {
  Timer? countdownTimer;
  Duration myDuration;

  TimerEntity({this.countdownTimer, this.myDuration = const Duration()});

  void initDuration(DateTime time) {
    DateTime timeNow = DateTime.now();
    Duration diff = time.difference(timeNow);
    myDuration = diff;
  }

  void startTimer({required VoidCallback callback}) {
    countdownTimer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        setCountDown(() {
          callback();
        });
      },
    );
  }

  void setCountDown(VoidCallback callback) {
    const reduceSeconds = 1;
    final seconds = myDuration.inSeconds - reduceSeconds;
    if (seconds < 0) {
      countdownTimer!.cancel();
    } else {
      myDuration = Duration(seconds: seconds);
    }
    callback();
  }

  void stopTimer() {
    countdownTimer!.cancel();
  }

  void resetTimer() {
    stopTimer();
    () => myDuration = const Duration(days: 5);
  }


  String strDigits(int n) => n.toString().padLeft(2, '0');

  String days() => strDigits(myDuration.inDays);

  String hours() => strDigits(myDuration.inHours.remainder(24));

  String minutes() => strDigits(myDuration.inMinutes.remainder(60));

  String seconds() => strDigits(myDuration.inSeconds.remainder(60));

  String getDigit( String unit, int index) {
    int value;
    switch (unit) {
      case 'days':
        value = myDuration.inDays;
        break;
      case 'hours':
        value = myDuration.inHours % 24;
        break;
      case 'minutes':
        value = myDuration.inMinutes % 60;
        break;
      case 'seconds':
        value = myDuration.inSeconds % 60;
        break;
      default:
        throw ArgumentError('Invalid time unit: $unit');
    }

    return value.toString().padLeft(2, '0')[index];
  }

}
