import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'home_widgets_imports.dart';

class HomeSectionsTitleWidget extends StatelessWidget {
  final String title;
  const HomeSectionsTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
