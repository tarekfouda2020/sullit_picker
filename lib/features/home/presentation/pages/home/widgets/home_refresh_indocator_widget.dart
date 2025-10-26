
import '../../../../../../core/helpers/export.dart';

class HomeRefreshIndicatorWidget extends StatelessWidget {
  final Widget child;
  final RefreshCallback onRefresh;
  const HomeRefreshIndicatorWidget({super.key, required this.child, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key:  getIt<OrdersHelper>().ordersRefreshKey(),
      backgroundColor: context.colors.white,
        onRefresh: onRefresh,
      child: child,
    );
  }
}
