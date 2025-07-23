
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area_controller.dart';

import '../supported_area_imports.dart';
class AreaRangesWidget extends StatelessWidget {
  final SupportedAreaController controller;
  const AreaRangesWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: context.colors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Translate.of(context).cover_range_around_pin,
            style: AppTextStyle.s16_w500(color: context.colors.black),
          ),
          Gaps.vGap16,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: controller.ranges.map((range) {
                final selected = controller.selectedRange.getValue() == range;
                return GestureDetector(
                  onTap: () => controller.updateRange(range),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal:16),
                    margin: const EdgeInsetsDirectional.only(end: 10),
                    decoration: BoxDecoration(
                      borderRadius: Dimens.borderRadius30PX,
                      color: selected
                          ?context.colors.pink
                          :context.colors.white,
                      border: Border.all(
                        color: selected
                            ?context.colors.primary
                            :context.colors.inputBorder
                      )
                    ),
                    child: Row(
                      children: [
                        CustomRadioWidget(selected: selected,size: 19,),
                        Gaps.hGap8,
                        Text(
                          '$range ',
                          style: AppTextStyle.s14_w600(
                            color: selected ? context.colors.primary : context.colors.gray58,
                          ),
                        ),
                        Text(
                          Translate.of(context).km,
                          style: AppTextStyle.s14_w600(
                            color: selected ? context.colors.primary : context.colors.gray58,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Gaps.vGap24,
          AppTextButton.maxCustom(
            text: controller.fromProfile
                ? Translate.of(context).save
                : Translate.of(context).confirm,
            onPressed: () =>  controller.confirmSaveRanges(context),
          ),
          Gaps.vGap26,
        ],
      ),
    );
  }
}
