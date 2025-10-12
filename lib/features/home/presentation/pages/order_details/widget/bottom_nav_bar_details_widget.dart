import 'widgets_imports.dart';
class BottomNavBarDetailsWidget extends StatelessWidget {
  const BottomNavBarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: AppTextButton.maxCustom(
          text: 'Send to cashier',
        borderRadius: BorderRadius.circular(40),
        onPressed: (){},
        textSize: 18,
        txtColor: context.colors.white,
        bgColor: context.colors.appGreen,
        maxHeight: 50,
      ),
    );
  }
}
