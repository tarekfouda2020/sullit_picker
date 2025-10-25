import '../../../../../core/helpers/export.dart';
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
    precacheImage(const AssetImage(Res.newOrderSound), context);
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
            Image.asset(
              Res.sulitTitleImage,
              height: 67,
              width: 147,
            ),
            Gaps.vGap7,
            SvgPicture.asset(Res.appPickerSvg,height: 26,width: 134,)
          ],
        ),
      ),
    );
  }
}
