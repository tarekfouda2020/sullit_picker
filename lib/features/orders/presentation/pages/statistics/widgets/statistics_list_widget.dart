import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/orders/data/models/statistics_model/statistics_model.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/statistics/statistics_page_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/statistics/widgets/statistics_list_shimmer_widget.dart';

import 'statistics_widgets_imports.dart';

class StatisticsListWidget extends StatelessWidget {
  final StatisticsPageController controller;
  final StatisticsModel model;
  const StatisticsListWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap16,
        StatisticsFilterWidget(controller: controller),
        Gaps.vGap16,
        BaseBlocBuilder(
          bloc: controller.refreshCubit,
          onSuccessWidget: (data) {
          return SingleChildScrollView(
            child: Column(
              spacing: 12,
              children: [
                StatisticsCardWidget(
                  title: Translate.of(context).total_orders,
                  value: "${model.totalOrders}",
                ),
                StatisticsCardWidget(
                  title: Translate.of(context).total_completed_orders,
                  value: "${model.completedOrders}",
                  showSuccess: true,
                ),
                StatisticsCardWidget(
                  title: Translate.of(context).total_failed_orders,
                  value: "${model.failedOrders}",
                  showFailed: true,
                ),
              ],
            ),
          );
        },
          onLoadingWidget: (context) => const StatisticsListShimmerWidget(),
        )

      ],
    );
  }
}
