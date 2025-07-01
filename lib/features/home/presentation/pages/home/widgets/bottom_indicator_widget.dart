import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class BottomIndicatorWidget extends StatelessWidget {
  const BottomIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      height: 2,
      decoration: BoxDecoration(
        color: context.colors.textPrimary,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
} 