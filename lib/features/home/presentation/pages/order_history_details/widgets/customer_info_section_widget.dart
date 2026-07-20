import 'package:flutter_tdd/features/home/presentation/widgets/custom_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_name_type_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_phone_widget.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/section_title_widget.dart';

import '../../../../../../core/helpers/export.dart';

class CustomerInfoSectionWidget extends StatelessWidget {
  final OrderModel order;
  const CustomerInfoSectionWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitleWidget(title: ""),
        Gaps.vGap12,
        Container(
          padding: Dimens.paddingAll16Px,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius12PX,
            boxShadow: [
              BoxShadow(
                color: context.colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            spacing: 12,
            children: [
              CustomerNameTypeWidget(customer: order.customer),
              Gaps.line,
              CustomerPhoneWidget(customer: order.customer),
              Gaps.line,
              CustomInfoWidget(
                title: "Payment Method : ${order.paymentMethod ?? 'N/A'}",
                image: Res.visaIcon,
                endWidget: Text(
                  order.paymentStatus == true
                      ? Translate.s.done // or "Paid"
                      : "Unpaid", // Add to Translate if needed
                  style: AppTextStyle.s15_w800(
                    color: order.paymentStatus == true
                        ? context.colors.appGreen
                        : context.colors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
