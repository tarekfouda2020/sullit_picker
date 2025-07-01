import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/res.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: context.colors.borderLight),
      ),
      child: Row(
        children: [
          const SizedBox(width: 27),
          Text(
            Translate.s.available_for_receiving_orders,
            style: AppTextStyle.s12_w400(color: context.colors.textPrimary),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              Res.searchIconHome,
              width: 29,
              height: 18,
            ),
          ),
        ],
      ),
    );
  }
}
