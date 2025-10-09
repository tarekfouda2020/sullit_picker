import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_picked_ratio_widget.dart';

import 'widgets_imports.dart';

class TimerCardDetailsWidget extends StatelessWidget {
  const TimerCardDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingH20Px,
      padding: Dimens.paddingAll20Px,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.inputBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                  child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0xFF009900),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              )),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                decoration: BoxDecoration(
                  color: context.colors.background,
                  borderRadius: Dimens.borderRadius10PX,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'No. of Items : 4',
                      style: AppTextStyle.s16_w300(color: context.colors.black),
                    )),
                    Text(
                      '4 items left',
                      style:
                          AppTextStyle.s14_w400(color: context.colors.simiGray),
                    )
                  ],
                ),
              ),
            ],
          ),
          Gaps.vGap12,
          Column(
            children: [
              Text(
                'Must Picking within',
                style: AppTextStyle.s16_w300(color: context.colors.black),
              ),
              Gaps.vGap16,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: context.colors.lightPrimary.withOpacity(0.3),
                      borderRadius: Dimens.borderRadius12PX,
                    ),
                    child: Text(
                      '1',
                      style:
                          AppTextStyle.s18_w600(color: context.colors.primary),
                    ),
                  ),
                  Gaps.hGap8,
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: context.colors.lightPrimary.withOpacity(0.3),
                      borderRadius: Dimens.borderRadius12PX,
                    ),
                    child: Text(
                      '2',
                      style:
                          AppTextStyle.s18_w600(color: context.colors.primary),
                    ),
                  ),
                  Text(
                    ' : ',
                    style: AppTextStyle.s16_w300(color: context.colors.black),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: context.colors.lightPrimary.withOpacity(0.3),
                      borderRadius: Dimens.borderRadius12PX,
                    ),
                    child: Text(
                      '3',
                      style:
                          AppTextStyle.s18_w600(color: context.colors.primary),
                    ),
                  ),
                  Gaps.hGap8,
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: context.colors.lightPrimary.withOpacity(0.3),
                      borderRadius: Dimens.borderRadius12PX,
                    ),
                    child: Text(
                      '5',
                      style:
                          AppTextStyle.s18_w600(color: context.colors.primary),
                    ),
                  ),
                ],
              ),
              Gaps.vGap8,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Minutes',
                    style: AppTextStyle.s14_w300(color: context.colors.primary),
                  ),
                  Gaps.hGap50,
                  // Gaps.hGap10,
                  Gaps.hGap8,
                  Text(
                    'Seconds',
                    style: AppTextStyle.s14_w300(color: context.colors.primary),
                  ),
                ],
              ),
              Gaps.vGap16,
              // AppTextButton.maxCustom(
              //   text: 'Continue Picking',
              //   maxHeight: 44,
              //   borderRadius: BorderRadius.circular(40),
              //   bgColor: context.colors.primary,
              //   txtColor: context.colors.white,
              //   textSize: 18,
              //   onPressed: () {
              //     AutoRouter.of(context).push(const OrderDetailsRoute());
              //   },
              // )
            ],
          )
        ],
      ),
    );
  }
}
