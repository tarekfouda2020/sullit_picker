import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/supported_area/supported_area_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/supported_area/widgets/map_app_bar_widget.dart';

@RoutePage(name: "SupportedAreaPageRoute")
class SupportedAreaPage extends StatefulWidget {
  const SupportedAreaPage({super.key});

  @override
  State<SupportedAreaPage> createState() => _SupportedAreaPageState();
}

class _SupportedAreaPageState extends State<SupportedAreaPage> {

  final SupportedAreaController controller = SupportedAreaController();


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller. getCurrentLocation(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar : const MapAppBarWidget(),
      body: ObsValueConsumer(
          observable: controller.selectedRange,
          builder: (context,value) {
            return Column(
              children: [
                CoveredAreaMapWidget(controller: controller),
                AreaRangesWidget(controller: controller),
              ],
            );
          }
      ),
    );
  }
} 