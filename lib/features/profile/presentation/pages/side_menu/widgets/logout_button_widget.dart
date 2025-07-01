import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import '../side_menu_controller.dart';

class LogoutButtonWidget extends StatelessWidget {
  final SideMenuController controller;

  const LogoutButtonWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: () => controller.logout(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: const Icon(Icons.logout, size: 20),
        label: Text(
          'تسجيل الخروج',
          style: AppTextStyle.s16_w700(color: Colors.white),
        ),
      ),
    );
  }
} 