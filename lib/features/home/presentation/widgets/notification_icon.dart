import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/res.dart';

class NotificationIconWidget extends StatelessWidget {
  final void Function() onTap;
  final double endPadding;

  const NotificationIconWidget({super.key, required this.onTap, this.endPadding = 16});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 8, end: endPadding),
        child: SvgPicture.asset(Res.outlineNotification),
      ),
    );
  }
}
