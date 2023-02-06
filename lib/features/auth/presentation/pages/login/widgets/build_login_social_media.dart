part of 'login_widgets_imports.dart';

class BuildLoginSocialMedia extends StatelessWidget {
  final LoginController controller;

  const BuildLoginSocialMedia({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Or use one of the following",
            style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
          ),
          const SizedBox(height: 15),
          const BuildSocialItem(icon: Res.facebook, title: "Continue with Facebook"),
          const BuildSocialItem(icon: Res.apple, title: "Continue with Apple"),
        ],
      ),
    );
  }
}
