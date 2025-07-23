import 'statistics_page_imports.dart';
import 'widgets/statistics_card_widget.dart';
import 'widgets/statistics_filter_widget.dart';

@RoutePage(name: "StatisticsPageRoute")
class MyStatisticsPage extends StatefulWidget {
  const MyStatisticsPage({super.key});

  @override
  State<MyStatisticsPage> createState() => _MyStatisticsPageState();
}

class _MyStatisticsPageState extends State<MyStatisticsPage> {
  final StatisticsPageController controller = StatisticsPageController();

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap16,
            StatisticsFilterWidget(controller: controller),
            Gaps.vGap16,
            StatisticsCardWidget(
              title: Translate.of(context).total_orders,
              value: "24",
              icon: Res.boxIcon,
            ),
            StatisticsCardWidget(
              title: Translate.of(context).total_completed_orders,
              value: "23",
              icon: Res.boxIcon,
              showSuccess: true,
            ),
            StatisticsCardWidget(
              title: Translate.of(context).total_failed_orders,
              value: "2",
              icon: Res.boxIcon,
              showFailed: true,
            ),
          ],
        ),
      ),
    );
  }
} 