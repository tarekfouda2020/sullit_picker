
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class DriverStatusWidget extends StatelessWidget {
  final bool isActive;
  const DriverStatusWidget({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Container(
         width: 12,
         height: 12,
         decoration:  BoxDecoration(
           color: isActive
               ?context.colors.green
               :context.colors.primary,
           shape: BoxShape.circle,
         ),
       ),
       Gaps.hGap6,
       Text(
        isActive ? Translate.of(context).available : Translate.s.out_of_delivery,
         style:  AppTextStyle.s12_w400(
             color: isActive
             ?context.colors.green
             :context.colors.primary
         ),
       ),
     ],
    );
  }
}
