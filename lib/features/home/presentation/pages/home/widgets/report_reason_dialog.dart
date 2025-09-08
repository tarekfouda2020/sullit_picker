import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';

import '../home_controller.dart';

class ReportReasonDialog extends StatelessWidget {
  final HomeController controller;
  const ReportReasonDialog({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    
    return AlertDialog(
      backgroundColor: context.colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(24),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Success Icon
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: context.colors.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.check_circle_outline,
              size: 40,
              color: context.colors.primary,
            ),
          ),
          Gaps.vGap20,
          
          // Title
          Text(
             "Report Submitted Successfully",
            style: AppTextStyle.s18_w700(color: context.colors.textPrimary),
            textAlign: TextAlign.center,
          ),
          Gaps.vGap16,
          
          // Report Reason Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: context.colors.lightBackground,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: context.colors.primary.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.report_problem_outlined,
                      size: 20,
                      color: context.colors.primary,
                    ),
                    Gaps.hGap8,
                    Text(
                      controller.currentOrderCubit.data!.reportReason,
                      style: AppTextStyle.s14_w600(color: context.colors.primary),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gaps.vGap20,
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: context.colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: context.colors.red.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 20,
                      color: context.colors.red,
                    ),
                    Gaps.hGap8,
                    Text(
                      "Please Wait",
                      style: AppTextStyle.s14_w600(color: context.colors.primary),
                    ),
                  ],
                ),
                Gaps.vGap10,
                Text(
                  "Your report has been submitted. Please wait for the store or employee to review and accept your report.",
                  style: AppTextStyle.s14_w400(color: context.colors.textSecondary).copyWith(
                    height: 1.3
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Gaps.vGap24,
          AppTextButton.maxPrimary(
            text:  "OK",
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
