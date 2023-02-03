part of 'splash_imports.dart';

class SplashController {
  void manipulateSaveData(BuildContext context) async {
    InitCustomPackages.instance.initCustomWidgets(language: "en");
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var userStr = preferences.getString("user");
    await Future.delayed(const Duration(seconds: 4));
    AutoRouter.of(context).push(const LoginRoute());
  }

}
