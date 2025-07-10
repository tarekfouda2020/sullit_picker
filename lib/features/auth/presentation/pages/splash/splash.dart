import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/app_slogan_widget.dart';

import 'splash_imports.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

@RoutePage()
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
    controller.navigateToLogin(context);
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
              height: 91,
              width: 93,
            ),
            Gaps.vGap24,
            const AppSloganWidget(),
          ],
        ),
      ),
    );
  }
}
