
import '../../../../../../core/helpers/export.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;
  const SectionTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.s18_w700(color: context.colors.black),
    );
  }
}
