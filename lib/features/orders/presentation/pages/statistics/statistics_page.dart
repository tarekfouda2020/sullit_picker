import 'package:flutter_tdd/features/orders/data/models/statistics_model/statistics_model.dart';
import 'statistics_page_imports.dart';
import 'widgets/statistics_list_widget.dart';

@RoutePage(name: "StatisticsPageRoute")
class MyStatisticsPage extends StatefulWidget {
  const MyStatisticsPage({super.key});

  @override
  State<MyStatisticsPage> createState() => _MyStatisticsPageState();
}

class _MyStatisticsPageState extends State<MyStatisticsPage> {
  late final StatisticsPageController controller;

  @override
  void initState() {
    super.initState();
    controller = StatisticsPageController(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: Translate.of(context).my_statistics,
        bgColor: context.colors.background,
      ),
      body: Padding(
        padding: Dimens.paddingH20Px,
        child: RequesterConsumer<StatisticsModel>(
          requester: controller.statisticsRequester,
          successBuilder: (context, data, isLoading) {
            return StatisticsListWidget(controller: controller, model: data);
          },
          failureBuilder: (context, error, callback) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("No Statistics Found",
                style: AppTextStyle.s16_w500(color: context.colors.black),
                )
              ],
            );
          },
          loadingBuilder: (context) => const StatisticsShimmerWidget(),
        ),
      ),
    );
  }
}
