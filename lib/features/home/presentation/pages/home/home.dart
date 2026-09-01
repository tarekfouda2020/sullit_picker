import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/orders_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/scroll_to_top_button_widget.dart';
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
    controller.initScrollListener();
  }

  @override
  void dispose() {
    controller.disposeScrollController();
    super.dispose();
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
          removeBgColorInScroll: true,
          size: 20,
          showBack: false,
        ),
        body: OrdersWidget(controller: controller),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ScrollToTopButtonWidget(controller: controller),
            Gaps.vGap12,
            GestureDetector(
              onTap: () => AutoRouter.of(context).push(const InStoreScannerRoute()),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: SvgPicture.asset(Res.scanIcon),
              ),
            )
          ],
        ),
      ),
    );
  }
}

