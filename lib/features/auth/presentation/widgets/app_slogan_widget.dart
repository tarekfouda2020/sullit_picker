
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
    return Image.asset(Res.appIcon,height: 150,width: 300,);
  }
}

