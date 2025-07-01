import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/res.dart';
import 'notification_badge.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SvgPicture.asset(
            Res.headerIcon,
            width: 45,
            height: 45,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Translate.s.welcome_ahmed,
                style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
              ),
              Row(
                children: [
                  Text(
                    '#5647843',
                    style: AppTextStyle.s14_w700(color: context.colors.primary),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    Translate.s.out_of_delivery,
                    style: AppTextStyle.s12_w400(color: context.colors.primary),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const NotificationBadge(),
        ],
      ),
    );
  }
} 