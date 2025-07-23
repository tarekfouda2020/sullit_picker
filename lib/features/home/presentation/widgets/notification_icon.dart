
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/res.dart';
class NotificationIconWidget extends StatelessWidget {
  final void Function() onTap;
  const NotificationIconWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  Padding(
        padding: const EdgeInsetsDirectional.only(top: 8, end: 16),
        child: SvgPicture.asset(Res.outlineNotification),
      ),
    );
  }
}
