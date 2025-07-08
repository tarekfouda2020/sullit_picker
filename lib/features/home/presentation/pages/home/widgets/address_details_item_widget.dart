import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'home_widgets_imports.dart';

class AddressDetailsItemWidget extends StatelessWidget {
  final String title;
  final String value;
  final int gaps;
  const AddressDetailsItemWidget({super.key, required this.title, required this.value, required this.gaps});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title :',
          style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
        ),
        Gaps.hGap(gaps),
        Expanded(
          child: Text(
            value,
            style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
          ),
        ),
      ],
    );
  }
}
