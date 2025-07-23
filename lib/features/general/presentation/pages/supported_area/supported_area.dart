import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area_controller.dart';
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/widgets/map_app_bar_widget.dart';
import 'supported_area_imports.dart';
import 'widgets/area_ranges_widget.dart';
import 'widgets/covered_area_map_widget.dart';


@RoutePage(name: "SupportedAreaPageRoute")
class SupportedAreaPage extends StatefulWidget {
  final bool fromProfile;
  final RegisterParams? registerParams;
  const SupportedAreaPage({super.key, required this.fromProfile, this.registerParams});

  @override
  State<SupportedAreaPage> createState() => _SupportedAreaPageState();
}

class _SupportedAreaPageState extends State<SupportedAreaPage> {

  late final SupportedAreaController controller;

  @override
  void initState() {
    super.initState();
    controller = SupportedAreaController(widget.fromProfile);
    controller.registerParams = widget.registerParams;
    controller. getLocation(context);
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