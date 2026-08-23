import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/custom_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_date_widget.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';

class PrescriptionCustomerSheetWidget extends StatelessWidget {
  final CustomerModel customer;
  final PrescriptionOrderController controller;
  const PrescriptionCustomerSheetWidget({super.key, required this.customer, required this.controller});

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
          if(controller.orderCubit.data!.base.shippingAddress?.isNotEmpty == true)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius8PX,
              border: Border.all(color: context.colors.borderLight),
            ),
            child: CustomInfoWidget(
              title: controller.orderCubit.data!.base.shippingAddress ?? "",
              image: '',
              isSvg: false,
              icon: Icons.location_on_outlined,
            ),
          ),
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
