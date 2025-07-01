import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class BuildSocialItem extends StatelessWidget {
  final String icon;
  final String? title;
  
  const BuildSocialItem({
    super.key,
    required this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          Gaps.hGap8,
          Text(title ?? '', style: AppTextStyle.s14_w500(color: Colors.black)),
        ],
      ),
    );
  }
}
