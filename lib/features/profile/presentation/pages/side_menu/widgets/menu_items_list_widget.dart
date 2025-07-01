import 'package:flutter/material.dart';
import '../side_menu_controller.dart';
import 'menu_item_widget.dart';
import 'logout_button_widget.dart';

class MenuItemsListWidget extends StatelessWidget {
  final SideMenuController controller;

  const MenuItemsListWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MenuItemWidget(
            icon: Icons.lock_outline,
            title: 'تغيير كلمة المرور',
            onTap: () => controller.navigateToChangePassword(context),
          ),
          MenuItemWidget(
            icon: Icons.history,
            title: 'سجل الطلبات',
            onTap: () => controller.navigateToOrdersHistory(context),
          ),
          MenuItemWidget(
            icon: Icons.account_balance_wallet,
            title: 'المحفظة',
            onTap: () => controller.navigateToWallet(context),
          ),
          MenuItemWidget(
            icon: Icons.bar_chart,
            title: 'إحصائياتي',
            onTap: () => controller.navigateToStatistics(context),
          ),
          MenuItemWidget(
            icon: Icons.contact_support,
            title: 'تواصل معنا',
            onTap: () => controller.navigateToContactUs(context),
          ),
          MenuItemWidget(
            icon: Icons.description,
            title: 'الشروط والأحكام',
            onTap: () => controller.navigateToTermsConditions(context),
          ),
          MenuItemWidget(
            icon: Icons.privacy_tip,
            title: 'سياسة الخصوصية',
            onTap: () => controller.navigateToPrivacyPolicy(context),
          ),
          MenuItemWidget(
            icon: Icons.notifications,
            title: 'الإشعارات',
            onTap: () => controller.navigateToNotifications(context),
          ),
          MenuItemWidget(
            icon: Icons.subscriptions,
            title: 'اشتراكي',
            onTap: () => controller.navigateToMySubscription(context),
          ),
          
          const SizedBox(height: 24),
          
          // Logout button
          LogoutButtonWidget(controller: controller),
        ],
      ),
    );
  }
} 