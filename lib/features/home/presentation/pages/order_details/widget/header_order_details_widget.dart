import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/custom_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_name_type_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_phone_widget.dart';

import '../../../../../../core/helpers/export.dart';

class HeaderOrderDetailsWidget extends StatelessWidget {
  final OrderModel data;
  final OrderDetailsController controller;

  const HeaderOrderDetailsWidget({
    super.key,
    required this.data,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ObsValueConsumer(
          observable: DateTimeHelper.getDifferenceFromCurrentDate(
            data.startPickingAt,
            format: "yyyy-MM-dd HH:mm:ss",
          ),
          builder: (context, assignedTime) => Text(
            '${Translate.of(context).assigned} $assignedTime',
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          ),
        ),
        Gaps.vGap12,
        Container(
          padding: Dimens.paddingAll16Px,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius12PX,
          ),
          child: Column(
            spacing: 12,
            children: [
              CustomerNameTypeWidget(customer: data.customer),
              Gaps.line,
              CustomerPhoneWidget(customer: data.customer),
              Gaps.line,
              CustomInfoWidget(
                title: "Payment Method : ${data.paymentMethod ?? 'N/A'}",
                image: Res.visaIcon,
                endWidget: Text(
                  data.isPaid ? Translate.s.paid : Translate.s.unpaid,
                  style: AppTextStyle.s15_w800(
                    color: data.isPaid
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
