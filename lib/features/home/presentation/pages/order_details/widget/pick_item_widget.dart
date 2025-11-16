import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
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
              onTap: () => controller.showDeleteItemDialog(context, orderDetails),
              child: const Icon(
                CupertinoIcons.trash,
                color: CupertinoColors.systemRed,
                size: 20,
              ),
            )
          ],
        ),
        Gaps.vGap12,
        CardPickedRatioWidget(
          pickedPercentage: orderDetails.product!.productPickedPercent!,
          child: Stack(
            key: GlobalKey(debugLabel: "${orderDetails.id}"),
            children: [
              CardItemPickWidget(
                controller: controller,
                data: orderDetails,
              ),
              Visibility(
                visible: orderDetails.product!.productStatus!.shouldShowStatus,
                replacement: _buildPositioned(context),
                child: Positioned(
                  right: 0,
                  child: GestureDetector(
                      // onTap: () {
                      //   if(orderDetails.product!.productStatus == ProductStatusEnum.replaced ){
                      //     controller.onPressReplace(context, orderDetails);
                      //   }
                      // },
                      child: StatusViewWidget(
                    status: orderDetails.product!.productStatus?.getName() ?? "",
                  )),
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
      ],
    );
  }

  Positioned _buildPositioned(BuildContext context) {
    final lang = context.select<DeviceCubit, String>(
      (value) => value.state.model.locale.languageCode,
    );
    return Positioned.directional(
      textDirection: lang == ApplicationConstants.langAR
          ? TextDirection.rtl
          : TextDirection.ltr,
      top: 18,
      end: 20,
      child: Visibility(
        visible: !controller.isProductFullPicked(orderDetails),
        child: GestureDetector(
          // onTap: () => controller.showReplaceDialog(context),
          onTap: () => controller.onPressReplace(context, orderDetails),
          child: SvgPicture.asset(
            Res.repeatIcon,
            height: 22,
            width: 22,
          ),
        ),
      ),
    );
  }
}
