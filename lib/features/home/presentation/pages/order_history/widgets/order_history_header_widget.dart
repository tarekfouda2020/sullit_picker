import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import '../../../../../../core/helpers/export.dart';
import '../../../../data/model/orders_model/orders_model.dart';

class OrderHistoryHeaderWidget extends StatelessWidget {
  final OrderModel order;
  const OrderHistoryHeaderWidget({super.key, required this.order});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRow(
              context,
              Translate.of(context).order_no,
              order.code
          ),
          Row(
            children: [
              Text(
                "Total Price :",
                style: AppTextStyle.s16_w300(color: context.colors.simiGray),
              ),
              Gaps.hGap7,
              Text(
                order.total,
                style: AppTextStyle.s18_w500(color: context.colors.primary),
              ).withDirhamSymbol(
                  symbolStyle:
                  AppTextStyle.s20_w300(color: context.colors.primary)),
            ],
          ),
          _buildRow(
              context,
              Translate.s.status,
              order.statusLabel
          ),
        ],
      ),
    );
  }

  Row _buildRow(BuildContext context, String title, String desc) {
    return Row(
      children: [
        Text(
          "$title :",
          style: AppTextStyle.s16_w300(color: context.colors.simiGray),
        ),
        Gaps.hGap7,
        Flexible(
          child: Text(
            desc,
            style: AppTextStyle.s16_w700(color: context.colors.primary),
          ),
        ),
      ],
    );
  }
}
