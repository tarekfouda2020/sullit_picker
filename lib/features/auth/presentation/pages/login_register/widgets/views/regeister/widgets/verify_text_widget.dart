import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';

import '../register_imports.dart';


class VerifyTextWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const VerifyTextWidget({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 17,end: 20),
        child: Text(
          title,
          style: AppTextStyle.s14_w700(color: context.colors.primary),
        ),
      ),
    );
  }
}
