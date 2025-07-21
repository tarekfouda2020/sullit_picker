import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class PinFieldWidget extends StatelessWidget {
  final Function(String) onComplete;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;

  const PinFieldWidget({
    super.key,
    required this.onComplete,
    this.margin,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       margin:margin?? Dimens.paddingH20Px,
      child: PinCodeTextField(
        length: 4,
        appContext: context,
        controller: controller,
        onChanged: (String value) {},
        backgroundColor: Colors.transparent,
        animationType: AnimationType.fade,
        textStyle: AppTextStyle.s16_w700(color: context.colors.black),
        textInputAction: TextInputAction.done,
        keyboardType:TextInputType.number,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 60,
            fieldWidth: 55,
            inactiveColor: context.colors.greyWhite,
            activeColor: context.colors.primary,
            selectedColor: context.colors.primary,
            selectedFillColor: context.colors.white,
            inactiveFillColor: context.colors.white,
            activeFillColor: context.colors.white,
            disabledColor: context.colors.black,
        ),
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        onCompleted: onComplete,
        cursorColor: context.colors.primary,
      ),
    );
  }
}
