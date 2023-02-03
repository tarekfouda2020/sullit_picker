part of 'active_account_widgets_imports.dart';

class BuildActiveButton extends StatelessWidget {
  final ActiveAccountController controller;
  const BuildActiveButton({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.codeCubit,
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: !state.data,
          child: LoadingButton(
              title: "Login",
              onTap: () {},
              color: !state.data? context.colors.greyWhite :context.colors.primary,
              textColor: !state.data? context.colors.black:context.colors.white,
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
