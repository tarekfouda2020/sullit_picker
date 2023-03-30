part of'forget_password_imports.dart';

@RoutePage()
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPasswordController controller = ForgetPasswordController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(),
      body: ListView(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          children: [
            BuildHeaderTitle(
              title: "Reset your password",
              subTitle: "In order for us to be able to reset your password, please Enter your phone number below",
            ),
            BuildForgetForm(controller: controller,),
            BuildForgetPasswordButton(controller: controller,),
          ],
      ),
    );
  }
}
