part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();

}

class _LoginState extends State<Login> {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const AuthAppBarWidget(showBack: false),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          children: [
            Text(
              "Welcome back",
              style: AppTextStyle.s20_w500(color: context.colors.black),
            ),
            Gaps.vGap20,
            BuildLoginForm(controller: controller),
            BuildLoginButton(controller: controller),
            const BuildForgetPasswordView(),
            const Divider(height: 30),
            BuildLoginSocialMedia(controller: controller),
          ],
        ),
      ),
    );
  }
}
