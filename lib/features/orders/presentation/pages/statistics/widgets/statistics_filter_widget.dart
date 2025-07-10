import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/statistics/statistics_page_controller.dart';
import 'package:flutter_tdd/res.dart';

import 'statistics_widgets_imports.dart';

class StatisticsFilterWidget extends StatelessWidget {
  final StatisticsPageController controller;
  const StatisticsFilterWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius30PX,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          SvgPicture.asset(Res.filterIcon, height: 20),
          Gaps.hGap8,
          Expanded(
            child: Text(
              'Filter By working store',
              style: AppTextStyle.s14_w400(color: context.colors.primary),
            ),
          ),
          SvgPicture.asset(Res.invertedTriangle, height: 9,width: 11,),
        ],
      ),
    );
  }
} 