import 'package:flutter_tdd/features/home/presentation/pages/profile_page/widgets/driver_work_info.dart';
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/widgets/menu_items_list_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/widgets/profile_header_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/notification_icon.dart';

import 'profile_page_imports.dart';
@RoutePage(name: "ProfilePageRoute")
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ProfilePageController controller = ProfilePageController();


  @override
  void initState() {
    super.initState();
    controller.getLanguages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: "",
        size: 50,
        actions: [
          NotificationIconWidget(onTap: ()=>AutoRouter.of(context).push(const NotificationsPageRoute())),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        children: [
           ProfileHeaderWidget(controller: controller),
           DriverWorkInfo(controller: controller),
          MenuItemsListWidget(controller: controller),
          Gaps.vGap22,
          AppTextButton.maxPrimary(
            text: Translate.of(context).logout,
            onPressed: () => controller.logout(context),
          ),
        ],
      ),
    );
  }
} 