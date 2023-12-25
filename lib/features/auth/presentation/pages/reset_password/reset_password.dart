part of'reset_password_imports.dart';

@RoutePage()
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<StatefulWidget> createState() => _ResetPasswordState();

}

class _ResetPasswordState extends State<ResetPassword> {
  final ResetPasswordController controller=ResetPasswordController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          const AuthHeaderTitleWidget(
            title: "Set new password",
            subTitle: "In order for us to be able to reset your password, please Enter your phone number below",
          ),
          ResetPasswordForm(controller: controller),
          ResetPasswordButton(controller: controller,),
      ],),
    );
  }
}
