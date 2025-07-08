import 'home_widgets_imports.dart';
class ActionButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const ActionButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
        text: text,
      onPressed: onTap,
    );
  }
}
