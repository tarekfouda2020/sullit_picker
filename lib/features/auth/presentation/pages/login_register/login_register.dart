import 'package:flutter_tdd/core/constants/duration_constants.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../login_register/login_register_imports.dart';

@RoutePage()
class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  final LoginRegisterController controller = LoginRegisterController();


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      resizeToAvoidBottomInset: true,
      appBar: const DefaultAppBar(
        title: "",
        showBack: false,
        size: 30,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Res.sulitIcon,
                width: 38,
                height: 37,
              ),
              Gaps.vGap40,
              const AuthPageLogoWidget(),
              Gaps.vGap24,
              AuthPageTitle(controller: controller),
              Gaps.vGap21,
              LoginRegisterTabBarWidget(controller: controller),
              Gaps.vGap32,
              ObsValueConsumer(
                observable: controller.currentTabObs,
                builder: (context, currentTab) {
                  return AnimatedSwitcher(
                    duration:DurationConstants.shortAnimationDuration,
                    child: controller.currentView(),
                  );
                },
              ),
              Gaps.vGap50, // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
