import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/res.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Res.notificationIconHome,
      width: 18.65,
      height: 20.51,
    );
  }
}
