part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          MyText(
            title: "Forget your password?",
            color: context.colors.black,
            size: 14,
          ),
          const SizedBox(width: 5),
          InkWell(
            onTap: ()=>AutoRouter.of(context).push(const ForgetPasswordRoute()),
            child: MyText(
              title: "Tap here",
              color: context.colors.primary,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
