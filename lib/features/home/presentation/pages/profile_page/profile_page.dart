import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/widgets/driver_work_info.dart';

import 'profile_page_imports.dart';


@RoutePage(name: "ProfilePageRoute")
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = ProfilePageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: "",
        size: 50,
        actions: [
          NotificationIconWidget(onTap: (){})
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const ProfileHeaderWidget(),
           DriverWorkInfo(controller: controller),
          MenuItemsListWidget(controller: controller),
        ],
      ),
    );
  }
} 