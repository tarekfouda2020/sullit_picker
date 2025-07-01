import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'address_details.dart';

class AddressSectionWidget extends StatelessWidget {
  const AddressSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Translate.s.address,
          style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 6),
        const AddressDetails(),
      ],
    );
  }
} 