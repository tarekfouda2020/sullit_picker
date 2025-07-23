

import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/driver_calling_widget.dart';

import 'home_widgets_imports.dart';


class AddressDetails extends StatelessWidget {
  final HomeController controller;
  final OrderStatusEnum orderStatus;
  const AddressDetails({super.key, required this.controller, required this.orderStatus});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal:22 ,vertical:15 ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius4PX,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: SvgPicture.asset(
                Res.markerIcon,
                width: 14,
                height: 18,
                colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
              ),
            ),
            Gaps.hGap14,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 6,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      Translate.of(context).united_arab_emirates_dubai,
                      style: AppTextStyle.s14_w700(color: context.colors.black),
                    ),
                  ),
                  AddressDetailsItemWidget(title: Translate.of(context).type, value: Translate.of(context).business, gaps: 9,),
                  AddressDetailsItemWidget(title: Translate.s.city, value: 'Al Qusais', gaps: 15,),
                  AddressDetailsItemWidget(title: Translate.s.street_name, value: 'Jumeirah', gaps: 8,),
                  AddressDetailsItemWidget(title: Translate.s.building_name, value: 'B 32', gaps: 9,),
                  AddressDetailsItemWidget(title: Translate.s.flat_no, value: '402', gaps: 7,),
                  AddressDetailsItemWidget(title: Translate.s.phone, value: '99753583245', gaps: 7,),
                ],
              ),
            ),
            if(orderStatus!=OrderStatusEnum.start)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: ReturnOrderWidget(controller: controller,),
                ),
                /// watt this to be in the end
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: DriverCallingWidget(controller: controller),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
