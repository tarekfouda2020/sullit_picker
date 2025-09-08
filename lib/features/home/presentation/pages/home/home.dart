import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/bottom_nav_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/no_orders_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/page_content_widget.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/statistics/statistics_page_imports.dart';

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
        body: BaseBlocBuilder(
            bloc: controller.currentOrderCubit,
            onSuccessWidget: (data) {
              return controller.currentOrderCubit.hasNoData
                  ? NoOrdersWidget(controller: controller)
                  :  PageContentWidget(
                  controller: controller,
                  model: data!
              );
            },
          onFailedWidget: (context, error, callback) {
            return NoOrdersWidget(controller: controller);
          },
          onLoadingWidget: (context) {
            return const PageContentShimmer();
          },
        ),
      ),
    );
  }
}


// ObsValueConsumer(
// observable: controller.orderStatusObs,
// builder: (context, status) {
// return Visibility(
// visible: false,
// replacement:  NoOrdersWidget(controller: controller),
// child: PageContentWidget(controller: controller, status: status),
// );
// },
// )