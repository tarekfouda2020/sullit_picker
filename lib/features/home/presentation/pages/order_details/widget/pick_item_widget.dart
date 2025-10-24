import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/enum/product_status_enum.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_picked_ratio_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/card_item_pick_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/status_view_widget.dart';


class PickItemWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel orderDetails;

  const PickItemWidget({
    super.key,
    required this.controller,
    required this.orderDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                orderDetails.product!.category.name,
                style: AppTextStyle.s18_w500(color: context.colors.simiGray),
              ),
            ),
            GestureDetector(
              onTap: () => controller.showDeleteItemDialog(context,orderDetails.id),
              child: Text("Delete Product",
              style: AppTextStyle.s15_w500(color: context.colors.primary),
              ),
            )
          ],
        ),
        Gaps.vGap12,
        CardPickedRatioWidget(
          pickedPercentage: orderDetails.product!.productPickedPercent!,
          child: Stack(
            children: [
              CardItemPickWidget(
                controller: controller,
                data: orderDetails,
              ),
              Visibility(
                visible: orderDetails.product!.productStatus != ProductStatusEnum.noEdit,
                replacement: Positioned(
                    top: 18,
                    right: 20,
                    child: GestureDetector(
                      // onTap: () => controller.showReplaceDialog(context),
                      onTap: ()=> controller.onPressReplace(context, orderDetails),
                      child: SvgPicture.asset(Res.repeatIcon,height: 22,width: 22,),
                    )),
                child: Positioned(right: 0, child: StatusViewWidget(status: controller.detailsCubit.data!.status)),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
      ],
    );
  }
}
