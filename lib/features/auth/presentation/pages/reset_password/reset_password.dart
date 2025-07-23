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
          AuthHeaderTitleWidget(
            title: Translate.of(context).set_new_password,
            subTitle: Translate.of(context).reset_password_subtitle,
          ),
          ResetPasswordForm(controller: controller),
          ResetPasswordButton(controller: controller,),
      ],),
    );
  }
}
