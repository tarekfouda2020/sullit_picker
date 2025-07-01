import 'side_menu_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'widgets/profile_header_widget.dart';
import 'widgets/menu_items_list_widget.dart';

@RoutePage()
class SideMenuPage extends StatefulWidget {
  const SideMenuPage({super.key});

  @override
  State<SideMenuPage> createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  final controller = SideMenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: context.colors.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () => controller.goBack(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'القائمة',
          style: AppTextStyle.s18_w700(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Profile header
          const ProfileHeaderWidget(),
          
          // Menu items
          MenuItemsListWidget(controller: controller),
        ],
      ),
    );
  }
} 