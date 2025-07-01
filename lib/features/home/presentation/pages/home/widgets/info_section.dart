import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String content;
  final String iconPath;

  const InfoSection({
    super.key,
    required this.title,
    required this.content,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
        ),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          height: 44,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 17),
              SvgPicture.asset(
                iconPath,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 13),
              Text(
                content,
                style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
