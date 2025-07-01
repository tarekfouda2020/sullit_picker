import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/res.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
      child: Column(
        children: [
          Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 17),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: context.colors.borderLight,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  Res.sectionIcon3,
                  width: 14,
                  height: 18,
                ),
                const SizedBox(width: 19),
                Text(
                  'United Arab Emirates, Dubai',
                  style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Translate.s.type} :',
                  style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
                ),
                Text(
                  'Business',
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Translate.s.city} :',
                  style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
                ),
                Text(
                  'Al Qusais',
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Translate.s.street_name} :',
                  style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
                ),
                Text(
                  'Jumeirah',
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Translate.s.building_name} :',
                  style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
                ),
                Text(
                  'B 32',
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Translate.s.flat_no} :',
                  style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
                ),
                Text(
                  '402',
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Translate.s.phone} :',
                  style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
                ),
                Text(
                  '+99753583245',
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
