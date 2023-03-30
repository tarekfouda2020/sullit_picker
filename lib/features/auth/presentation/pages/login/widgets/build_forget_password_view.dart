part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Text(
            "Forget your password?",
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          const SizedBox(width: 5),
          InkWell(
            onTap: () => AutoRouter.of(context).push(const ForgetPassword()),
            child: Text(
              "Tap here",
              style: AppTextStyle.s14_w400(color: context.colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
