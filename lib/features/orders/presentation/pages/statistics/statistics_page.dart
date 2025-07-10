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
        title: "My Statistics",
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
            const StatisticsCardWidget(
              title: "Total Orders",
              value: "24",
              icon: Res.boxIcon,
            ),
            const StatisticsCardWidget(
              title: "Total Completed Orders",
              value: "23",
              icon: Res.boxIcon,
              showSuccess: true,
            ),
            const StatisticsCardWidget(
              title: "Total Failed Orders",
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