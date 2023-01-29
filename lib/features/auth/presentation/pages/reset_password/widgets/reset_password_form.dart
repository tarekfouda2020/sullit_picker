part of'reset_password_widgets_imports.dart';

class ResetPasswordForm extends StatelessWidget {
  final ResetPasswordController controller;
  const ResetPasswordForm({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericTextField(
          fieldTypes: FieldTypes.password,
          type: TextInputType.text,
          action: TextInputAction.next,
          controller: controller.password,
          validate: (value) => value?.validatePassword(),
          label: "New password",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(Res.password),
          ),
        ),
        GenericTextField(
          fieldTypes: FieldTypes.password,
          type: TextInputType.text,
          action: TextInputAction.done,
          validate: (value) => value?.validatePasswordConfirm(pass: controller.password.text),
          label: "Repeat new password",
          margin: const EdgeInsets.only(top: 20),
          controller: controller.confirmPassword,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(Res.password),
          ),
        ),

      ],
    );
  }
}
