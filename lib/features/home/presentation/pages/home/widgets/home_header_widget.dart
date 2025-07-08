import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/res.dart';

import 'driver_status_widget.dart';

class HomeHeaderWidget extends StatelessWidget {
  final HomeController controller;
  const HomeHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 0, right: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.hGap16,
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.only(bottom: 2),
                  alignment: Alignment.bottomCenter,
                  decoration:  BoxDecoration(
                    color: context.colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                      Res.personIcon,
                    width: 30, height: 30,
                  )
                  ,
                ),
                Gaps.hGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${Translate.s.welcome} tarek",
                        style:  AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.vGap4,
                      Row(
                        children: [
                           Text(
                            '#5647843',
                            style: AppTextStyle.s14_w700(color: context.colors.primary),
                          ),
                          Gaps.hGap13,
                         const Visibility(
                           visible: true,
                             replacement: DriverStatusWidget(isActive: false),
                             child: DriverStatusWidget(isActive: true)
                         )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            // onTap: () => controller.navigateToSideMenu(context),
            child:  Padding(
              padding: const EdgeInsets.only(top: 8, right: 16),
              child: SvgPicture.asset(Res.outlineNotification),
            ),
          ),
        ],
      ),
    );
  }
} 