import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateTimeHelper {
  static String formatDate({required DateTime date, required String formatType}) {
    String formatted = DateFormat(formatType).format(date);
    return formatted;
  }

  static DateTime convertToDateTime({required String strDate,  String? formatType}) {
    DateTime formatted = DateFormat("dd-MM-yyyy hh:mm a").parse(strDate);
    return formatted;
  }

  static String getDayOfWeek(DateTime date) {
    const days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    return days[date.weekday - 1];
  }

  /// Creates a default date range for the last 30 days
  static PickerDateRange getDefaultDateRange() {
    final now = DateTime.now();
    final thirtyDaysAgo = now.subtract(const Duration(days: 30));
    return PickerDateRange(thirtyDaysAgo, now);
  }

  /// Creates a date range for the last N days
  static PickerDateRange getLastNDaysRange(int days) {
    final now = DateTime.now();
    final startDate = now.subtract(Duration(days: days));
    return PickerDateRange(startDate, now);
  }

  /// Creates a date range for the current month
  static PickerDateRange getCurrentMonthRange() {
    final now = DateTime.now();
    final startOfMonth = DateTime(now.year, now.month, 1);
    return PickerDateRange(startOfMonth, now);
  }

  /// Creates a date range for the current year
  static PickerDateRange getCurrentYearRange() {
    final now = DateTime.now();
    final startOfYear = DateTime(now.year, 1, 1);
    return PickerDateRange(startOfYear, now);
  }

  /// Calculates the difference in days between start and end date
  static int getDaysDifference(PickerDateRange? dateRange) {
    if (dateRange?.startDate == null || dateRange?.endDate == null) {
      return 0;
    }
    return dateRange!.endDate!.difference(dateRange.startDate!).inDays;
  }

  /// Formats a date range to a readable string
  static String formatDateRange(PickerDateRange? dateRange, {String format = 'dd/MM/yyyy'}) {
    if (dateRange?.startDate == null || dateRange?.endDate == null) {
      return 'No date selected';
    }
    
    final startFormatted = DateFormat(format).format(dateRange!.startDate!);
    final endFormatted = DateFormat(format).format(dateRange.endDate!);
    
    return '$startFormatted - $endFormatted';
  }

  /// Checks if a date range is valid (start date is before end date)
  static bool isValidDateRange(PickerDateRange? dateRange) {
    if (dateRange?.startDate == null || dateRange?.endDate == null) {
      return false;
    }
    return dateRange!.startDate!.isBefore(dateRange.endDate!) || 
           dateRange.startDate!.isAtSameMomentAs(dateRange.endDate!);
  }

  /// Creates a date range picker controller with initial range
  static DateRangePickerController createDateRangeController({PickerDateRange? initialRange}) {
    final controller = DateRangePickerController();
    if (initialRange != null) {
      controller.selectedRange = initialRange;
    }
    return controller;
  }
}