
import 'package:flutter_tdd/core/widgets/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/core/widgets/report_bottom_sheet_widget.dart';

import '../../../../../home/presentation/pages/home/widgets/repoer_bottom_sheet_widget.dart';
import 'wallet_widgets_imports.dart';


class TransactionsPeriodBottomSheetWidget extends StatelessWidget {
  final WalletController controller;
  const TransactionsPeriodBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20Px,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetHeaderWidget(title: ""),
          Gaps.vGap22,
          SingleChildScrollView(
            child: ObsValueConsumer(
              observable: controller.selectedTransactionObs,
              builder: (context,value) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 15,
                  children: TransactionPeriodEnum.values.map<Widget>((e) {
                    return CustomReportBottomSheetItemWidget(
                      title: e.getTitle,
                      onTap: ()=> controller.updateTransactionPeriod(e, context),
                      isSelected: value == e,
                    );
                  },).toList(),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
