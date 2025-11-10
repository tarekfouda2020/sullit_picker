
import '../../../../../../core/helpers/export.dart';

class OrderHistoryItemsWidget extends StatelessWidget {
  final String title;
  final String endTitle;
  const OrderHistoryItemsWidget({super.key, required this.title, required this.endTitle});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: context.colors.disableGray.withAlpha(100),
          borderRadius: Dimens.borderRadius12PX
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title,
            style: AppTextStyle.s15_w500(color: context.colors.black),
          ),
          Text(" : ",
            style: AppTextStyle.s15_w500(color: context.colors.black),
          ),
          Text(endTitle,
            style: AppTextStyle.s15_w500(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
