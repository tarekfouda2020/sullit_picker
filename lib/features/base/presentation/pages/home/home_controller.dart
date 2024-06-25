part of 'home_imports.dart';

class HomeController {
  final ObsValue<int> secondObs = ObsValue<int>.withInit(0);


  final TextEditingController minutesController = TextEditingController();
  final TextEditingController secondsController = TextEditingController();


  void runTimer() {
    int seconds = int.parse(secondsController.text) + (int.parse(minutesController.text) * 60);
    secondObs.setValue(seconds);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      var newValue = secondObs.getValue() - 1;
      secondObs.setValue(newValue);
        if (newValue == 0) {
          timer.cancel();
        }
    });
  }





}
