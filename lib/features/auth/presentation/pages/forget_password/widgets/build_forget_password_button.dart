part of 'forget_password_widgets_imports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordController controller;

  const BuildForgetPasswordButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.phoneCubit,
      onSuccessWidget: (data) {
        bool isEmpty = data.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: LoadingButton(
              title: "Continue",
              onTap: () {},
              color: isEmpty ? context.colors.greyWhite : context.colors.primary,
              textColor: isEmpty ? context.colors.black : context.colors.white,
              btnKey: controller.btnKey,
              margin: const EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55),
        );
      },
    );
  }
}
