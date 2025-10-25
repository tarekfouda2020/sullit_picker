import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';

class HeaderOrderDetailsWidget extends StatelessWidget {
  final OrderModel data;
 final OrderDetailsController controller;
  const HeaderOrderDetailsWidget({super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => AutoRouter.of(context).maybePop(),
              child: SvgPicture.asset(
                Res.arrow,
                colorFilter: ColorFilter.mode(context.colors.simiGray, BlendMode.srcIn),
                width: 24,
                height: 24,
              ),
            ),
            Gaps.hGap14,
            Text(
              'Order No. : ',
              style: AppTextStyle.s18_w300(color: context.colors.simiGray),
            ),
            Text(
              data.code,
              style: AppTextStyle.s18_w600(color: context.colors.primary),
            ),
          ],
        ),
        Gaps.vGap8,
        Row(
          children: [
            Expanded(
              child: ObsValueConsumer(
                observable: DateTimeHelper.getDifferenceFromCurrentDate(data.startPickingAt),
                builder: (context, assignedTime) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Text('Assigned $assignedTime', style: AppTextStyle.s14_w300(color: context.colors.textColor)),
                ),
              ),
            ),
            // Visibility(
            //   visible: controller.detailsCubit.data?.deletedOrders?.isNotEmpty ?? false,
            //   child: GestureDetector(
            //     onTap: () => controller.showDeletedProductsSheet(context),
            //     child: Text("Deleted Items (${controller.detailsCubit.data?.deletedOrders?.length})",
            //     style: AppTextStyle.s15_w500(color: context.colors.primary),
            //     ),
            //   ),
            // )

          ],
        ),
      ],
    );
  }
}
