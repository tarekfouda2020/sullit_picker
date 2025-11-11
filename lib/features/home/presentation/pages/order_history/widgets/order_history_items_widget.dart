
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';

import '../../../../../../core/helpers/export.dart';

class OrderHistoryItemsWidget extends StatelessWidget {
  final String title;
  final String endTitle;
  final double? vPadding;
  final void Function()? onPressPhone;
  const OrderHistoryItemsWidget({super.key, required this.title, required this.endTitle, this.onPressPhone,this.vPadding});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:  EdgeInsets.symmetric(horizontal: 10,vertical: vPadding ?? 10),
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
            style: AppTextStyle.s16_w500(color: context.colors.black),
          ),
          Expanded(
            child: Text(endTitle,
              style: AppTextStyle.s16_w400(color: context.colors.black),
            ),
          ),
          Gaps.hGap5,
          Visibility(
            visible: onPressPhone!=null,
            child: GestureDetector(
              onTap: onPressPhone,
              child: Container(
                width: 30, height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.green,
                ),
                child: UnconstrainedBox(child: SvgPicture.asset(Res.phoneIcon,width: 18, height: 18,)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
