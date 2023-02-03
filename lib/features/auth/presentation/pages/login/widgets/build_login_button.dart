part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginController controller;

  const BuildLoginButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
        title: "Login",
        onTap: () => AutoRouter.of(context).push(HomeRoute()),
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
        margin: EdgeInsets.only(top: 40),
        fontSize: 16,
        height: 55,
    );
  }
}
