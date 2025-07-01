import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 0, right: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.hGap16,
          // Avatar + Welcome + ID + Status
          Expanded(
            child: Row(
              children: [
                // Avatar
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF0000),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person, color: Colors.white, size: 28),
                ),
                Gaps.hGap12,
                // Welcome, ID, Status
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Translate.s.welcome_ahmed,
                        style: AppTextStyle.s18_w700(color: const Color(0xFF000000)),
                      ),
                      Gaps.vGap4,
                      Row(
                        children: [
                          Text(
                            '#5647843',
                            style: AppTextStyle.s14_w600(color: const Color(0xFFFF0000)),
                          ),
                          Gaps.hGap8,
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF0000),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Gaps.hGap8,
                          Text(
                            Translate.s.out_of_delivery,
                            style: AppTextStyle.s14_w600(color: const Color(0xFFFF0000)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Notification bell
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 16),
            child: const Icon(Icons.notifications_none, size: 24, color: Color(0xFF000000)),
          ),
        ],
      ),
    );
  }
} 