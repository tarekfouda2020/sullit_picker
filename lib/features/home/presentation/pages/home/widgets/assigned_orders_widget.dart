import 'home_widgets_imports.dart';

class AssignedOrdersWidget extends StatelessWidget {
  final int ordersCount;
  const AssignedOrdersWidget({super.key, required this.ordersCount});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.lightPrimary.withOpacity(0.3),
        borderRadius: Dimens.borderRadius30PX,
      ),
      child: Row(
        children: [
          Text(
            "Assigned Orders : ",
            style: AppTextStyle.s18_w300(
                color: context.colors.primary),
          ),
          Gaps.hGap4,
          Text(
            "$ordersCount",
            style: AppTextStyle.s18_w800(
                color: context.colors.primary),
          )
        ],
      ),
    );
  }
}
