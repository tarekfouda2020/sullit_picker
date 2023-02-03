part of'reset_password_widgets_imports.dart';

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordController controller;
  const ResetPasswordButton({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
        title: "Set Password",
        onTap: () {},
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
        margin: const EdgeInsets.only(top: 40),
        fontSize: 16,
        height: 55
    );
  }
}
