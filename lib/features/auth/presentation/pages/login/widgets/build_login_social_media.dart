import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';
import '../login_controller.dart';
import 'build_social_item.dart';

class BuildLoginSocialMedia extends StatelessWidget {
  final LoginController controller;
  
  const BuildLoginSocialMedia({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'أو سجل الدخول باستخدام',
            style: AppTextStyle.s14_w400(color: Colors.black),
          ),
          const SizedBox(height: 16),
          BuildSocialItem(icon: Res.facebook),
          BuildSocialItem(icon: Res.apple),
        ],
      ),
    );
  }
}
