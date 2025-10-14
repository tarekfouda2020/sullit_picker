
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/export.dart';

class PasswordSuffixIconWidget extends StatelessWidget {
  final void Function() onTap;
  final bool value;
  final EdgeInsetsGeometry? padding;
  const PasswordSuffixIconWidget({super.key, required this.onTap, required this.value, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? Dimens.paddingEnd22Px,
      child: GestureDetector(
         onTap: onTap,
          child: Icon(
            value?
            Icons.visibility_outlined:Icons.visibility_off_outlined,
            color: context.colors.gray58,
          )),
    );
  }
}
