import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';

class RangeDatePickerSheetWidget extends StatefulWidget {
  final String title;
  final DateTime? maxDate;
  final PickerDateRange? initialSelectedRange;
  final bool enablePastDates;
  final VoidCallback? onSave;
  final VoidCallback? onReset;
  final VoidCallback? onClose;
  final Function(PickerDateRange?)? onSelectionChanged;
  final String? saveButtonText;
  final String? resetButtonText;

  const RangeDatePickerSheetWidget({
    super.key,
    required this.title,
    this.maxDate,
    this.initialSelectedRange,
    this.enablePastDates = true,
    this.onSave,
    this.onReset,
    this.onClose,
    this.onSelectionChanged,
    this.saveButtonText,
    this.resetButtonText,
  });

  @override
  State<RangeDatePickerSheetWidget> createState() => _RangeDatePickerSheetWidgetState();
}

class _RangeDatePickerSheetWidgetState extends State<RangeDatePickerSheetWidget> {
  late DateRangePickerController _dateRangeController;
  PickerDateRange? _selectedRange;

  @override
  void initState() {
    super.initState();
    _dateRangeController = DateRangePickerController();
    _selectedRange = widget.initialSelectedRange;
    if (_selectedRange != null) {
      _dateRangeController.selectedRange = _selectedRange;
    }
  }

  @override
  void dispose() {
    _dateRangeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kToolbarHeight),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          BottomSheetHeaderWidget(
            title: widget.title,
            onClose: widget.onClose ?? () => Navigator.of(context).pop(),
          ),
          _buildDatePicker(),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildDatePicker() {
    return SfDateRangePicker(
      controller: _dateRangeController,
      headerHeight: 60,
      showNavigationArrow: true,
      enablePastDates: widget.enablePastDates,
      toggleDaySelection: true,
      allowViewNavigation: true,
      initialDisplayDate: _selectedRange!.startDate ,
      initialSelectedDate: _selectedRange!.endDate,
      onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
        if (args.value is PickerDateRange) {
          setState(() {
            _selectedRange = args.value;
          });
          widget.onSelectionChanged?.call(args.value);
        }
      },
      backgroundColor: context.colors.white,
      startRangeSelectionColor: context.colors.primary,
      todayHighlightColor: context.colors.primary,
      selectionColor: context.colors.primary,
      rangeTextStyle: AppTextStyle.s14_w400(color: context.colors.black),
      endRangeSelectionColor: context.colors.primary,
      rangeSelectionColor: context.colors.primary.withOpacity(.09),
      selectionTextStyle: AppTextStyle.s14_w400(color: context.colors.white),
      selectionMode: DateRangePickerSelectionMode.range,
      headerStyle: DateRangePickerHeaderStyle(
        textAlign: TextAlign.center,
        backgroundColor: Colors.transparent,
        textStyle: AppTextStyle.s16_w700(color: context.colors.primary),
      ),
      maxDate: widget.maxDate ?? DateTime.now(),
      initialSelectedRange: _selectedRange,
      monthCellStyle: DateRangePickerMonthCellStyle(
        textStyle: _buildTextStyle(color: context.colors.black),
        disabledDatesTextStyle: _buildTextStyle(color: context.colors.gray58),
        blackoutDateTextStyle: _buildTextStyle(color: context.colors.blackOpacity),
        weekendTextStyle: _buildTextStyle(color: context.colors.blackOpacity),
        trailingDatesTextStyle: _buildTextStyle(color: context.colors.blackOpacity),
      ),
      monthViewSettings: DateRangePickerMonthViewSettings(
        dayFormat: 'E',
        viewHeaderStyle: DateRangePickerViewHeaderStyle(
          textStyle: AppTextStyle.s12_w400(color: context.colors.gray58),
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Column(
      children: [
        AppTextButton.maxCustom(
          text: widget.saveButtonText ?? "Confirm",
          borderRadius: Dimens.borderRadius30PX,
          onPressed: () {
            widget.onSave?.call();
            Navigator.of(context).pop();
          },
        ),
        Gaps.vGap12,
        AppTextButton.maxCustom(
          text: widget.resetButtonText ?? "Reset Date",
          txtColor: context.colors.primary,
          borderRadius: Dimens.borderRadius30PX,
          bgColor: context.colors.white,
          borderColor: context.colors.primary,
          onPressed: () {
            setState(() {
              _selectedRange = null;
              _dateRangeController.selectedRange = null;
            });
            widget.onReset?.call();
            Navigator.of(context).pop();
          },
        ),
        Gaps.vGap12,
      ],
    );
  }

  TextStyle _buildTextStyle({required Color color}) {
    return AppTextStyle.s14_w400(color: color);
  }
}




