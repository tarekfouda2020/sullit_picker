import 'profile_page_widgets_imports.dart';

class MenuItemsListWidget extends StatelessWidget {
  final ProfilePageController controller;

  const MenuItemsListWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap20,
        MenuItemWidget(
          icon: Res.lockIcon,
          title: 'Change Password',
          onTap: () => controller.navigateToChangePassword(context),
        ),
        MenuItemWidget(
          icon: Res.orderHistory,
          title: 'Orders History',
          onTap: () => controller.navigateToOrdersHistory(context),
        ),
        MenuItemWidget(
          icon: Res.mapIcon,
          title: 'Supported Geographical area',
          onTap: () => controller.routeToSupportedArea(context),
        ),
        MenuItemWidget(
          icon: Res.ordersStatistics,
          title: 'My Statistics',
          onTap: () => controller.navigateToStatistics(context),
        ),
        MenuItemWidget(
          icon: Res.subscriptionIcon,
          title: 'My subscription',
          onTap: () => controller.navigateToMySubscription(context),
        ),
        MenuItemWidget(
          icon: Res.globalIcon,
          title: 'Language',
          onTap: () {},
          endTitle: "EN",
        ),
        MenuItemWidget(
          icon: Res.contactUs,
          title: "Contact Us",
          onTap: () => controller.navigateToContactUs(context),
        ),
        MenuItemWidget(
          icon: Res.termsConditions,
          title: 'Terms&Conditions',
          onTap: () => controller.navigateToTermsConditions(context),
        ),
        Gaps.vGap4,
        MenuItemWidget(
          icon: Res.privacyPolicy,
          title: 'Privacy Policy',
          onTap: () => controller.navigateToPrivacyPolicy(context),
        ),
        Gaps.vGap22,
        AppTextButton.maxPrimary(text: "Logout",
        onPressed: () => controller.logout(context),
        ),
        Gaps.vGap20
      ],
    );
  }
} 