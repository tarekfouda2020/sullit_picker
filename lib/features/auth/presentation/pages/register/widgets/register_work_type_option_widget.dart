import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class RegisterWorkTypeOptionWidget extends StatelessWidget {
  final String type;
  final String selectedType;
  final VoidCallback onTap;

  const RegisterWorkTypeOptionWidget({
    super.key,
    required this.type,
    required this.selectedType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = type == selectedType;
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? context.colors.primary.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? context.colors.primary : Colors.grey.shade300,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? context.colors.primary : Colors.grey,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.colors.primary,
                        ),
                      ),
                    )
                  : null,
            ),
            Gaps.hGap12,
            Text(
              type,
              style: AppTextStyle.s14_w400(
                color: isSelected ? context.colors.primary : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 