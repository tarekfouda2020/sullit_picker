import 'package:flutter_tdd/features/home/data/model/accept_prescription_preview_model/accept_prescription_preview_model.dart';
import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/order_invoice_widget.dart';

import '../../../../../../core/helpers/export.dart';

class PrescriptionInvoiceSheetWidget extends StatelessWidget {
  final AcceptPrescriptionPreviewModel invoice;
  final int bagsCount;
  final double bagPrice;
  final VoidCallback onConfirm;

  const PrescriptionInvoiceSheetWidget({
    super.key,
    required this.invoice,
    required this.bagsCount,
    required this.bagPrice,
    required this.onConfirm,
  });

  InvoiceModel _toInvoiceModel() {
    final double envFees = bagPrice * bagsCount;
    return InvoiceModel(
      subTotal: invoice.subtotal,
      tax: invoice.tax,
      couponDiscount: "0",
      discounts: invoice.discounts,
      grandTotal: invoice.total,
      shipping: "0",
      serviceFees: "0",
      techFees: "0",
      vatFeeAmount: "0",
      totalFeeAmount: "0",
      loyaltyPointsValue: "0",
      envFees: envFees.toStringAsFixed(2),
      bagsCount: bagsCount,
      productsTotalPrice: "0",
      taxPercentage: "0",
      bagPrice: bagPrice,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      padding: Dimens.paddingAll16Px,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OrderInvoiceWidget(invoice: _toInvoiceModel()),
          Gaps.vGap16,
          AppTextButton.maxPrimary(
            text: Translate.s.complete_order,
            onPressed: onConfirm,
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
