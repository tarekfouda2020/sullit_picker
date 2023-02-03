part of'forget_password_widgets_imports.dart';


class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordController controller;
  const BuildForgetPasswordButton({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<String>, GenericState<String>>(
      bloc: controller.phoneCubit,
      builder: (context, state) {
        bool isEmpty = state.data.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: LoadingButton(
              title: "Continue",
              onTap: () {},
              color: isEmpty? context.colors.greyWhite:context.colors.primary,
              textColor: isEmpty? context.colors.black:context.colors.white,
              btnKey: controller.btnKey,
              margin: const EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
