import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class AvailabilityToggleWidget extends StatefulWidget {
  const AvailabilityToggleWidget({super.key});

  @override
  State<AvailabilityToggleWidget> createState() => _AvailabilityToggleWidgetState();
}

class _AvailabilityToggleWidgetState extends State<AvailabilityToggleWidget> {
  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Translate.s.available_for_receiving_orders,
              style: AppTextStyle.s16_w400(color: const Color(0xFF000000)),
            ),
            Switch(
              value: isAvailable,
              onChanged: (v) => setState(() => isAvailable = v),
              activeColor: const Color(0xFFFF0000),
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.withOpacity(0.3),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ],
        ),
      ),
    );
  }
} 