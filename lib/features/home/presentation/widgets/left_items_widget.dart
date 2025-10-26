
import '../../../../core/helpers/export.dart';

class LeftItemsWidget extends StatelessWidget {
  final int numberOfItems;
  final double pickedPercent;
  final String? endTitle;
  const LeftItemsWidget({super.key, required this.numberOfItems, required this.pickedPercent, this.endTitle});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15))
        // borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Expanded(
              child: Text(
                'No. of Items : $numberOfItems',
                style: AppTextStyle.s16_w300(color: context.colors.black),
              )),
          Text(
            endTitle ?? 'Picked $pickedPercent%',
            style: AppTextStyle.s14_w400(color: context.colors.black),
          )
        ],
      ),
    );
  }
}
