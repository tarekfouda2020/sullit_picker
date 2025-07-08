
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/bottom_nav_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/no_orders_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/page_content_widget.dart';

import 'home_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

@RoutePage(name: "HomePageRoute")
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.initializeHome(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 20,
      ),
      body: ObsValueConsumer(
        observable: controller.orderStatusObs,
        builder: (context, status) {
          return Visibility(
            visible: true,
            replacement:  NoOrdersWidget(controller: controller),
            child: PageContentWidget(controller: controller, status: status),
          );
        },
      ),
      bottomNavigationBar: BottomNavWidget(controller: controller),
    );
  }
}