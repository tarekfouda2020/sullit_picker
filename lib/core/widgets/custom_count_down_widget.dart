import 'package:flutter/material.dart';
import 'dart:async';

class CustomCountdown extends StatefulWidget {
  final int? days;
  final int? hours;
  final int? minutes;
  final int? seconds;
  final TextStyle? timeStyle;
  final TextStyle? titleStyle;
  final TextStyle? separatorStyle;
  final BoxDecoration? timeDecoration;
  final EdgeInsets? timePadding;
  final EdgeInsets? spacing;
  final String? daysTitle;
  final String? hoursTitle;
  final String? minutesTitle;
  final String? secondsTitle;
  final bool showTitles;
  final VoidCallback? onDone;
  final Widget? replacement;
  final MainAxisAlignment? alignment;
  final double? titleSpacing;
  final bool countUp;
  final bool showSeparators;
  final bool splitDigits;

  const CustomCountdown({
    Key? key,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.timeStyle,
    this.titleStyle,
    this.separatorStyle,
    this.timeDecoration,
    this.timePadding,
    this.spacing,
    this.daysTitle = "Days",
    this.hoursTitle = "Hours",
    this.minutesTitle = "Minutes",
    this.secondsTitle = "Seconds",
    this.showTitles = true,
    this.onDone,
    this.replacement,
    this.alignment,
    this.titleSpacing = 8.0,
    this.countUp = false,
    this.showSeparators = true,
    this.splitDigits = true,
  }) : super(key: key);

  @override
  State<CustomCountdown> createState() => _CustomCountdownState();
}

class _CustomCountdownState extends State<CustomCountdown> {
  Timer? _timer;
  late Duration _currentDuration;

  @override
  void initState() {
    super.initState();
    _currentDuration = Duration(
      days: widget.days ?? 0,
      hours: widget.hours ?? 0,
      minutes: widget.minutes ?? 0,
      seconds: widget.seconds ?? 0,
    );
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (widget.countUp) {
          // Count up
          _currentDuration = Duration(seconds: _currentDuration.inSeconds + 1);
        } else {
          // Count down
          if (_currentDuration.inSeconds > 0) {
            _currentDuration = Duration(seconds: _currentDuration.inSeconds - 1);
          } else {
            // Timer finished
            _timer?.cancel();
            widget.onDone?.call();
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // If timer finished and replacement widget provided
    if (_currentDuration.inSeconds <= 0 && widget.replacement != null && !widget.countUp) {
      return widget.replacement!;
    }

    final days = _currentDuration.inDays;
    final hours = _currentDuration.inHours.remainder(24);
    final minutes = _currentDuration.inMinutes.remainder(60);
    final seconds = _currentDuration.inSeconds.remainder(60);

    final List<Widget> timeUnits = [];
    final List<Widget> titleUnits = [];

    // Check which units to show
    final showDays = days > 0;
    final showHours = hours > 0 || days > 0;
    final showMinutes = minutes > 0 || hours > 0 || days > 0;
    final showSeconds = true;

    // Build time units with separators
    if (showDays) {
      _addTimeUnit(timeUnits, titleUnits, days, widget.daysTitle ?? "Days");
      if (widget.showSeparators && (showHours || showMinutes || showSeconds)) {
        timeUnits.add(_buildSeparator());
        if (widget.showTitles) titleUnits.add(const SizedBox(width: 20));
      }
    }

    if (showHours) {
      _addTimeUnit(timeUnits, titleUnits, hours, widget.hoursTitle ?? "Hours");
      if (widget.showSeparators && (showMinutes || showSeconds)) {
        timeUnits.add(_buildSeparator());
        if (widget.showTitles) titleUnits.add(const SizedBox(width: 20));
      }
    }

    if (showMinutes) {
      _addTimeUnit(timeUnits, titleUnits, minutes, widget.minutesTitle ?? "Minutes");
      if (widget.showSeparators && showSeconds) {
        timeUnits.add(_buildSeparator());
        if (widget.showTitles) titleUnits.add(const SizedBox(width: 20));
      }
    }

    if (showSeconds) {
      _addTimeUnit(timeUnits, titleUnits, seconds, widget.secondsTitle ?? "Seconds");
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Timer boxes row
        Row(
          mainAxisAlignment: widget.alignment ?? MainAxisAlignment.center,
          children: timeUnits,
        ),

        // Spacing between timer and titles
        if (widget.showTitles && titleUnits.isNotEmpty)
          SizedBox(height: widget.titleSpacing),

        // Titles row
        if (widget.showTitles && titleUnits.isNotEmpty)
          Row(
            mainAxisAlignment: widget.alignment ?? MainAxisAlignment.center,
            children: titleUnits,
          ),
      ],
    );
  }

  void _addTimeUnit(List<Widget> timeUnits, List<Widget> titleUnits, int value, String title) {
    final valueStr = value.toString().padLeft(2, '0');

    if (widget.splitDigits && valueStr.length == 2) {
      // Split into two separate containers
      final firstDigit = valueStr[0];
      final secondDigit = valueStr[1];

      // Add first digit
      timeUnits.add(_buildTimeBox(firstDigit));
      timeUnits.add(SizedBox(width: widget.spacing?.horizontal ?? 4));
      timeUnits.add(_buildTimeBox(secondDigit));

      if (widget.showTitles) {
        // Add title spanning both digits
        titleUnits.add(
          SizedBox(
            width: _calculateDigitWidth() * 2 + (widget.spacing?.horizontal ?? 4),
            child: Center(child: _buildTitleText(title)),
          ),
        );
      }
    } else {
      // Single container
      timeUnits.add(_buildTimeBox(valueStr));
      if (widget.showTitles) {
        titleUnits.add(_buildTitleText(title));
      }
    }

    // Add spacing after the unit (not separator)
    timeUnits.add(SizedBox(width: widget.spacing?.horizontal ?? 8));
    if (widget.showTitles) {
      titleUnits.add(SizedBox(width: widget.spacing?.horizontal ?? 8));
    }
  }

  Widget _buildTimeBox(String value) {
    return Container(
      padding: widget.timePadding ?? const EdgeInsets.all(12),
      decoration: widget.timeDecoration ?? BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        value,
        style: widget.timeStyle ?? const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Text(
        ":",
        style: widget.separatorStyle ?? widget.timeStyle ?? const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildTitleText(String title) {
    return Text(
      title,
      style: widget.titleStyle ?? const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
    );
  }

  double _calculateDigitWidth() {
    // Approximate width of a single digit container
    return (widget.timePadding?.horizontal ?? 24) + 24; // padding + estimated text width
  }
}