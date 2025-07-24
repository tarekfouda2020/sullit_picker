import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/statistics/statistics_page_controller.dart';

import 'statistics_widgets_imports.dart';

class StatisticsFilterWidget extends StatelessWidget {
  final StatisticsPageController controller;
  const StatisticsFilterWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.showStoresSheet(context),
      child: Container(
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
              child: ObsValueConsumer(
                observable: controller.selectedStoreObs,
                builder: (context,value) {
                  return Text(
                    value?.name ?? Translate.of(context).filter_by_working_store,
                    style: AppTextStyle.s14_w400(color: context.colors.primary),
                  );
                }
              ),
            ),
            SvgPicture.asset(Res.invertedTriangle, height: 9,width: 11,),
          ],
        ),
      ),
    );
  }
} 