import 'orders_history_widgets_imports.dart';

class OrderHistoryInfoWidget extends StatelessWidget {
  final String label;
  final String value;
  const OrderHistoryInfoWidget({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 9),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Row(
        children: [
          Text(
            "$label: ",
            style: AppTextStyle.s12_w400(color: context.colors.black),
          ),
          Text(
            value,
            style: AppTextStyle.s12_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
