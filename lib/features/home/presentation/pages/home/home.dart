
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/bottom_nav_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/no_orders_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/page_content_widget.dart';

import 'home_imports.dart';

@RoutePage(name: "HomePageRoute")
class HomePage extends StatefulWidget {
  // final bool fromLogin;
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.initializeOrderDialog(context);
    // controller.getUserData(context);
  }


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => controller.onPop(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        appBar: const DefaultAppBar(
          title: "",
          bgColor: Colors.transparent,
          size: 20,
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
      ),
    );
  }
}