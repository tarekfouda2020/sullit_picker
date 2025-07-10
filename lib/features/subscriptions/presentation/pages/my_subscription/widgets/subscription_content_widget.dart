import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class SubscriptionContentWidget extends StatelessWidget {
  const SubscriptionContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 19),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: context.colors.borderLight)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("100.00 ",
                style: AppTextStyle.s22_w600(color: context.colors.primary),
              ),
              Text("AED/Year",
                style: AppTextStyle.s22_w300(color: context.colors.primary),
              ),
            ],
          ),
          Gaps.vGap12,
          Text("Benefits :",
            style: AppTextStyle.s12_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          ...List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Container(
                    width: 2, height: 2,
                    decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.gray58
                    ),
                  ),
                  Gaps.hGap8,
                  Text("Lorem Ipsum is simply dummy text of the printing ",
                    style: AppTextStyle.s12_w400(color: context.colors.gray58),
                  )
                ],),
            );
          },),
          Gaps.vGap10,
          Divider(color: context.colors.gray58,),
          Gaps.vGap10,
          Text("Expired with in 30 Days",
          style: AppTextStyle.s12_w400(color: context.colors.gray58),
          )
        ],
      ),
    );
  }
} 