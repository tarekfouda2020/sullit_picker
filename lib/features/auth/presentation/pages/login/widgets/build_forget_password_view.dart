import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            'نسيت كلمة المرور؟',
            style: AppTextStyle.s14_w400(color: Colors.black),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () => AutoRouter.of(context).push(const ForgetPasswordPageRoute()),
            child: Text(
              'اضغط هنا',
              style: AppTextStyle.s14_w600(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
