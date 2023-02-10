part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginController controller;

  const BuildLoginButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
        title: "Login",
        onTap: () => controller.onSubmit(context),
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
        margin: const EdgeInsets.only(top: 40),
        fontSize: 16,
        height: 55,
    );
  }
}
