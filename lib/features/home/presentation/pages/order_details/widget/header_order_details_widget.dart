import 'dart:math';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';

class HeaderOrderDetailsWidget extends StatelessWidget {
  final OrderModel data;
 final OrderDetailsController controller;
  const HeaderOrderDetailsWidget({super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => AutoRouter.of(context).maybePop(),
          child: _buildTransform(context),
        ),
        Gaps.hGap14,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 14,
            children: [
              Row(
                children: [
                  Text(
                    Translate.of(context).order_no_colon,
                    style: AppTextStyle.s18_w300(color: context.colors.simiGray),
                  ),
                  Text(
                    data.code,
                    style: AppTextStyle.s18_w600(color: context.colors.primary),
                  ),
                ],
              ),
              Text("Customer name: ${data.customer.name}",
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
              GestureDetector(
                onTap: () => BottomSheetsWidget.showContactWithSheet(context, data.customer.customerPhone),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Customer phone: ${data.customer.customerPhone}",
                        style: AppTextStyle.s15_w500(color: context.colors.black),
                      ),
                    ),
                    Icon(Icons.phone,color: context.colors.green,)
                  ],
                ),
              ),
              ObsValueConsumer(
                observable: DateTimeHelper.getDifferenceFromCurrentDate(data.startPickingAt),
                builder: (context, assignedTime) => Text('${Translate.of(context).assigned} $assignedTime', style: AppTextStyle.s14_w300(color: context.colors.textColor)),
              ),
            ],
          ),
        ),

        Gaps.vGap8,
      ],
    );
  }

  Transform _buildTransform(BuildContext context) {
    var lang = context.select<DeviceCubit,String>((value) => value.state.model.locale.languageCode);
    return Transform.rotate(
              angle:lang == ApplicationConstants.langAR
                  ? pi
                  : 0,
              child: SvgPicture.asset(
                Res.arrowBack,
                colorFilter: ColorFilter.mode(context.colors.simiGray, BlendMode.srcIn),
                width: 24,
                height: 24,
              ),
            );
  }
}
