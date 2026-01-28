import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';

class OrderInvoiceWidget extends StatelessWidget {
  final InvoiceModel invoice;

  const OrderInvoiceWidget({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Invoice Summary",
        style: AppTextStyle.s16_w700(color: context.colors.black),
        ),
        Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius12PX,
            border: Border.all(color: context.colors.borderLight, width: 1.3),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Padding(
                padding: Dimens.paddingAll16Px,
                child: Column(
                  spacing: 12,
                  children: [
                    _buildInvoiceRow(
                      context,
                      label: "Subtotal (Exclusive VAT)",
                      value: invoice.subTotal,
                    ),
                    ...invoice.discounts.map((discount) => _buildInvoiceRow(
                          context,
                          label: discount.typeLabel,
                          value: discount.discountValue,
                          isDiscount: true,
                        )),
                    if (invoice.envFees.isNotEmpty && invoice.envFees != "0")
                      _buildInvoiceRow(
                        context,
                        label: "Environment Fee ( ${invoice.bagsCount}x Bags )",
                        value: invoice.envFees,
                      ),
                    Gaps.line,
                    // _buildInvoiceRow(
                    //   context,
                    //   label: Translate.s.total,
                    //   value: invoice.total,
                    //   isBoldValue: true,
                    // ),
                    _buildInvoiceRow(
                      context,
                      label: "Total VAT",
                      value: invoice.totalVat.toStringAsFixed(2),
                    ),
                  ],
                ),
              ),
              Container(
                padding: Dimens.paddingAll16Px,
                color: context.colors.appGreen.withOpacity(0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style:
                            AppTextStyle.s16_w700(color: context.colors.appGreen),
                        children: const [
                          TextSpan(text: "Grand Total"),
                        ],
                      ),
                    ),
                    Text(
                      invoice.getGrandTotal().toStringAsFixed(2),
                      style: AppTextStyle.s20_w700(color: context.colors.appGreen),
                    ).withDirhamSymbol(symbolColor: context.colors.appGreen),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInvoiceRow(
    BuildContext context, {
    required String label,
    required String value,
    bool isBoldValue = false,
    bool isDiscount = false,
  }) {
    final Color valueColor =
        isDiscount ? context.colors.primary : context.colors.black;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
        Row(
          children: [
            if (isDiscount)
              Text(
                "- ",
                style: AppTextStyle.s16_w700(color: valueColor),
              ),
            Text(
              value,
              style: isBoldValue
                  ? AppTextStyle.s16_w700(color: valueColor)
                  : AppTextStyle.s16_w400(color: valueColor),
            ).withDirhamSymbol(symbolColor: valueColor),
          ],
        ),
      ],
    );
  }
}
