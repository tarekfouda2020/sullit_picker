part of '../in_store_scanner_imports.dart';

class OrderNumberBadgeWidget extends StatelessWidget {
  final String orderNo;
  final bool expand;

  const OrderNumberBadgeWidget({
    super.key,
    required this.orderNo,
    this.expand = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: expand ? double.infinity : null,
      padding: Dimens.paddingH20V12PX,
      decoration: BoxDecoration(
        color: context.colors.lightBackground,
        borderRadius: Dimens.borderRadius30PX,
      ),
      child: Text.rich(
        TextSpan(
          text: '${Translate.s.order_no_colon} ',
          style: AppTextStyle.s16_w400(color: context.colors.textSecondary),
          children: [
            TextSpan(
              text: orderNo,
              style: AppTextStyle.s16_w700(color: context.colors.primary),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
