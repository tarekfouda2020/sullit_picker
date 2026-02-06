import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';

import '../../../../../../core/helpers/export.dart';

class UpdateInvoiceShimmerWidget extends StatelessWidget {
  final InvoiceModel invoice;
  const UpdateInvoiceShimmerWidget({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  label: Translate.s.subtotal_exclusive_vat,
                ),
                ...invoice.discounts.map((discount) => _buildInvoiceRow(
                      context,
                      label: discount.typeLabel,
                    )),
                if (invoice.envFees.isNotEmpty && invoice.envFees != "0")
                  _buildInvoiceRow(
                    context,
                    label:
                        "${Translate.s.environment_fee} ( ${invoice.bagsCount}x ${Translate.s.bags} )",
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
                  label: Translate.s.total_vat,
                ),
              ],
            ),
          ),
          Container(
            padding: Dimens.paddingAll16Px,
            color: context.colors.appGreen.withOpacity(0.1),
            child: _buildInvoiceRow(
              context,
              label: Translate.s.grand_total,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInvoiceRow(
    BuildContext context, {
    required String label,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
        const TextShimmer(
          lineWidthPercent: 0.3,
        )
      ],
    );
  }
}
