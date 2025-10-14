import '../../../../core/helpers/export.dart';


class AuthSectionTitleWidget extends StatelessWidget {
  final String title;
  final double? paddingFromBottom;
  const AuthSectionTitleWidget({super.key, required this.title, this.paddingFromBottom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:paddingFromBottom ?? 5),
      child: Text(
        title,
        style: AppTextStyle.s14_w600(color: context.colors.textLabel),
      ),
    );
  }
}
