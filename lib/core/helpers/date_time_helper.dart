import 'dart:async';

import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';

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



  static ObsValue<String> getDifferenceFromCurrentDate(String strDate) {
    final DateFormat formatter = DateFormat("dd MMM yyyy - hh:mm a");
    final DateTime startTime = formatter.parse(strDate).toLocal();
    DateTime utcTime = DateTime.utc(
      startTime.year,
      startTime.month,
      startTime.day,
      startTime.hour,
      startTime.minute,
      startTime.second,
    );

    final ObsValue<String> timeAgoObs = ObsValue<String>.withInit(_formatTimeAgo(DateTime.now().difference(utcTime)));
    Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      final elapsed = now.difference(utcTime);
      timeAgoObs.setValue(_formatTimeAgo(elapsed));
    });
    
    return timeAgoObs;
  }

  static String _formatTimeAgo(Duration elapsed) {
    if (elapsed.inSeconds < 60) {
      return "${elapsed.inSeconds} seconds ago";
    } else if (elapsed.inMinutes < 60) {
      return "${elapsed.inMinutes} minutes ago";
    } else if (elapsed.inHours < 24) {
      return "${elapsed.inHours} hours ago";
    } else if (elapsed.inDays < 7) {
      return "${elapsed.inDays} days ago";
    } else if (elapsed.inDays < 30) {
      final weeks = (elapsed.inDays / 7).floor();
      return "$weeks week${weeks > 1 ? 's' : ''} ago";
    } else if (elapsed.inDays < 365) {
      final months = (elapsed.inDays / 30).floor();
      return "$months month${months > 1 ? 's' : ''} ago";
    } else {
      final years = (elapsed.inDays / 365).floor();
      return "$years year${years > 1 ? 's' : ''} ago";
    }
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