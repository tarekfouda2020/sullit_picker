import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'wallet_widgets_imports.dart';

class SelectDateWidget extends StatelessWidget {
  final WalletController controller;
  const SelectDateWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      controller: controller.roomDateRangeController,
      headerHeight: 60,
      showNavigationArrow: true,
      enablePastDates: true,
      toggleDaySelection: true,
      allowViewNavigation: true,
      onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
        if (args.value is PickerDateRange) {
          controller.selectedRangeDates = args.value;
          controller.roomDateRangeController.selectedRange = args.value;
          print("==========>>>>>>>>>>${controller.selectedRangeDates?.startDate}<<<<<<<<<<<<<,");
        }
      },
      backgroundColor: context.colors.white,
      startRangeSelectionColor: context.colors.primary,
      todayHighlightColor: context.colors.primary,
      selectionColor: context.colors.primary,
      rangeTextStyle: AppTextStyle.s14_w400(color: context.colors.black),
      endRangeSelectionColor: context.colors.primary,
      rangeSelectionColor: context.colors.primary.withOpacity(.09),
      // selectionMode: DateRangePickerSelectionMode.extendableRange,
      selectionTextStyle: AppTextStyle.s14_w400(color: context.colors.white),
      selectionMode: DateRangePickerSelectionMode.range,
      headerStyle: DateRangePickerHeaderStyle(
          textAlign: TextAlign.center,
          backgroundColor: Colors.transparent,
          textStyle: AppTextStyle.s16_w700(color: context.colors.primary)),
      maxDate: DateTime.now(),
      initialSelectedRange: controller.selectedRangeDates ?? controller.initDateRange(),
      monthCellStyle: DateRangePickerMonthCellStyle(
        textStyle: _buildTextStyle(color: context.colors.black),
        disabledDatesTextStyle: _buildTextStyle(color: context.colors.gray58),
        blackoutDateTextStyle: _buildTextStyle(color: context.colors.blackOpacity),
        weekendTextStyle: _buildTextStyle(color: context.colors.blackOpacity),
        trailingDatesTextStyle: _buildTextStyle(color: context.colors.blackOpacity),
      ),
      monthViewSettings:  DateRangePickerMonthViewSettings(
        dayFormat: 'E',
        viewHeaderStyle: DateRangePickerViewHeaderStyle(
          textStyle: AppTextStyle.s12_w400(color: context.colors.gray58), // customize color here
        ),
      ),
    );
  }

  TextStyle _buildTextStyle({required Color color}) {
    return AppTextStyle.s14_w400(color: color);
  }


}
