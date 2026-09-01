part of '../in_store_scanner_imports.dart';

class SearchOrderCardWidget extends StatelessWidget {
  final OrderModel order;
  final VoidCallback onTap;

  const SearchOrderCardWidget({
    super.key,
    required this.order,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final orderType = order.getOrderType();
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimens.dp10),
      child: Material(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        child: InkWell(
          onTap: onTap,
          borderRadius: Dimens.borderRadius12PX,
          child: Container(
            width: double.infinity,
            padding: Dimens.paddingAll20Px,
            decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius12PX,
              border: Border.all(color: context.colors.inputBorder),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '${Translate.s.order_no} : ',
                      style: AppTextStyle.s17_w300(
                        color: context.colors.simiGray,
                      ),
                    ),
                    Gaps.hGap2,
                    Expanded(
                      child: Text(
                        order.code,
                        style: AppTextStyle.s19_w600(
                          color: context.colors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                if (orderType != null) ...[
                  Gaps.vGap15,
                  Row(
                    children: [
                      Text(
                        '${Translate.s.order_type} : ',
                        style: AppTextStyle.s17_w300(
                          color: context.colors.simiGray,
                        ),
                      ),
                      Gaps.hGap2,
                      Expanded(
                        child: Text(
                          orderType.getLabel(),
                          style: AppTextStyle.s19_w600(
                            color: context.colors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                Gaps.vGap15,
                CustomerDateWidget(customer: order.customer),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
