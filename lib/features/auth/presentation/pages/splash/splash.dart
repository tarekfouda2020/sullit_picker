import 'splash_imports.dart';


@RoutePage(name: "SplashRoute")
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  final SplashController controller = SplashController();


  @override
  void initState() {
    super.initState();
    controller.manipulateSaveData(context);
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // precacheImage(const AssetImage(Res.appIcon), context);
    // precacheImage(const AssetImage(Res.newOrderSound), context);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Res.appIcon,
              height: 141,
              width: 124,
            ),
          ],
        ),
      ),
    );
  }
}
