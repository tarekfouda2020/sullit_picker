import 'package:flutter_tdd/features/home/data/enum/customer_type.dart';

import '../../../../core/helpers/export.dart';

class CustomerTypeWidget extends StatelessWidget {
  final CustomerType customerType;
  const CustomerTypeWidget({super.key, required this.customerType});

  @override
  Widget build(BuildContext context) {
     switch(customerType){
      case CustomerType.shareHolder:
        return _buildShareHolderType(context);
      case CustomerType.vip:
        return _buildVipType(context);
      case CustomerType.regular:
        return Gaps.empty;
    }
  }

  Container _buildShareHolderType(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
        decoration: BoxDecoration(
          color: context.colors.gold2,
          borderRadius: Dimens.borderRadius8PX
        ),
        child: Row(
          children: [
            SvgPicture.asset(Res.crownIcon),
            Gaps.hGap4,
            Text("Shareholder",
            style: AppTextStyle.s12_w600(color: context.colors.black),
            )
          ],
        ),
      );
  }

  Container _buildVipType(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 7),
        decoration: BoxDecoration(
          color: context.colors.lightPrimary,
            borderRadius: Dimens.borderRadius8PX
        ),
        child: Text("VIP Executive",
        style: AppTextStyle.s12_w600(color: context.colors.primary),
        ),
      );
  }
}
