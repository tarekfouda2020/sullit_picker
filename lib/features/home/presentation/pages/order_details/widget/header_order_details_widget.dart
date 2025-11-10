import 'dart:math';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_date_widget.dart';

import 'widgets_imports.dart';

class HeaderOrderDetailsWidget extends StatelessWidget {
  final OrderModel data;
  final OrderDetailsController controller;

  const HeaderOrderDetailsWidget(
      {super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => AutoRouter.of(context).maybePop(),
              child: _buildTransform(context),
            ),
            Gaps.hGap15,
            Text(
              Translate.of(context).order_no_colon,
              style: AppTextStyle.s18_w300(color: context.colors.simiGray),
            ),
            Gaps.hGap4,
            Text(
              data.code,
              style: AppTextStyle.s18_w600(color: context.colors.primary),
            ),
          ],
        ),
        CustomerDateWidget(customer: data.customer),
        ObsValueConsumer(
          observable: DateTimeHelper.getDifferenceFromCurrentDate(
              data.startPickingAt,
              format: "yyyy-MM-dd HH:mm:ss"),
          builder: (context, assignedTime) => Text(
              '${Translate.of(context).assigned} $assignedTime',
              style: AppTextStyle.s14_w300(color: context.colors.textColor)),
        ),
      ],
    );
  }

  Transform _buildTransform(BuildContext context) {
    String lang = context.select<DeviceCubit, String>((value) => value.state.model.locale.languageCode);
    return Transform.rotate(
      angle: (lang == ApplicationConstants.langAR || lang == ApplicationConstants.langUR) ? pi : 0,
      child: SvgPicture.asset(
        Res.arrowBack,
        colorFilter: ColorFilter.mode(context.colors.simiGray, BlendMode.srcIn),
        width: 24,
        height: 24,
      ),
    );
  }
}
