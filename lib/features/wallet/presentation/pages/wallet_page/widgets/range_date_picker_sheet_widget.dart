import 'package:flutter_tdd/core/widgets/range_date_picker_sheet_widget.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'wallet_widgets_imports.dart';

class DateSheetWidget extends StatelessWidget {
  final WalletController controller;
  const DateSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RangeDatePickerSheetWidget(
      title: "Select Date Range",
      initialSelectedRange: controller.selectedRangeDates ?? controller.initDateRange(),
      maxDate: DateTime.now(),
      onSave: () => controller.saveDateRanges(context),
      onReset: () => controller.resetDateRanges(context),
      onClose: () => controller.cancelDateRanges(context),
      onSelectionChanged: (PickerDateRange? selectedRange) {
        controller.selectedRangeDates = selectedRange;
        controller.roomDateRangeController.selectedRange = selectedRange;
      },
      saveButtonText: "Confirm",
      resetButtonText: "Reset Date",
    );
  }
}
