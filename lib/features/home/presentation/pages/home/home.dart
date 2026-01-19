import 'package:flutter_tdd/core/helpers/device_id_helper.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/orders_widget.dart';
import 'home_imports.dart';
@RoutePage(name: "HomePageRoute")
class HomePage extends StatefulWidget {
  // final bool fromLogin;
  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.initializeAvailableStatus(context);
  }


  @override
  Widget build(BuildContext context) {
    getIt<DeviceIdHelper>().getDeviceId();
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => controller.onPop(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        appBar: const DefaultAppBar(
          title: "",
          bgColor: Colors.transparent,
          removeBgColorInScroll: true,
          size: 20,
          showBack: false,
        ),
        body: OrdersWidget(controller: controller),
      ),
    );
  }
}

