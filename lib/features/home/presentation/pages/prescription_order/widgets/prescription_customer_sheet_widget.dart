import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/custom_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_date_widget.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';

class PrescriptionCustomerSheetWidget extends StatelessWidget {
  final CustomerModel customer;

  const PrescriptionCustomerSheetWidget({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll16Px,
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomerDateWidget(customer: customer),
          Gaps.vGap15,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius8PX,
              border: Border.all(color: context.colors.borderLight),
            ),
            child: CustomInfoWidget(
              title: customer.email,
              image: '',
              isSvg: false,
              icon: Icons.email_outlined,
            ),
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
