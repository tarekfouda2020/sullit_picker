
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

import '../../../../core/theme/text/app_text_style.dart';

class AppSloganWidget extends StatelessWidget {
  const AppSloganWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(Res.appSlogan);
    return Text(
      Translate.s.weideliver,
      style: AppTextStyle.s35_w700(color: context.colors.primary),
    );
  }
}

