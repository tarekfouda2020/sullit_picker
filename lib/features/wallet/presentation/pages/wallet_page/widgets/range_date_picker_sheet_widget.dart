import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/widgets/LoadingButton.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/select_date_widget.dart';

import 'wallet_widgets_imports.dart';

class RangeDatePickerSheetWidget extends StatelessWidget {
  final WalletController controller;
  const RangeDatePickerSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kToolbarHeight),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: context.colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          BottomSheetHeaderWidget(title: "Select Date Range",
          onClose: () => controller.cancelDateRanges(context),
          ),
          SelectDateWidget(controller: controller),
          AppTextButton.maxCustom(
            text: "Confirm",
          borderRadius: Dimens.borderRadius30PX,
          onPressed: () => controller.saveDateRanges(context),
          ),
          AppTextButton.maxCustom(
            text: "Reset Date",
            txtColor: context.colors.primary,
            borderRadius: Dimens.borderRadius30PX,
            bgColor: context.colors.white,
            borderColor: context.colors.primary,
            onPressed: () => controller.resetDateRanges(context),
          ),
        ],
      ),
    );
  }
}
