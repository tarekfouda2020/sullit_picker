import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';
class CardItemPickWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel data;
  const CardItemPickWidget({super.key, required this.controller, required this.data,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius10PX,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CachedImage(
                height: 52,
                width: 52,
                url: data.product.thumbnailImage,
                haveRadius: false,
                boxShape: BoxShape.circle,
              ),
              Gaps.hGap10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.product.name,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    style: AppTextStyle.s14_w600(
                        color: context.colors.simiGray),
                  ),
                  Gaps.vGap5,
                  // Text(
                  //   data.price,
                  //   style: AppTextStyle.s14_w400(
                  //       color: context.colors.simiGray),
                  // )
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: ObsValueConsumer(
                  observable: controller.isPicked,
                  builder: (context, isPicked) =>
                      AppTextButton.maxCustom(
                        text: isPicked ? 'Picked' : 'Pick',
                        bgColor: isPicked
                            ? const Color(0xFFE3FFE3)
                            : context.colors.primary,
                        txtColor: isPicked
                            ? context.colors.appGreen
                            : context.colors.white,
                        textSize: 16,
                        maxHeight: 40,
                        onPressed: () => controller.pickItem(data) ,
                      ),
                ),
              ),
              Gaps.hGap6,
              Column(
                children: [
                  Text(
                    'Qnt',
                    style: AppTextStyle.s14_w400(
                        color: context.colors.textColor),
                  ),
                  Gaps.vGap8,
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: context.colors.lightPrimary,
                        borderRadius: Dimens.borderRadius30PX),
                    child: Text(
                      "${data.quantity - data.product.pickedQuantity!}",
                      style: AppTextStyle.s18_w600(
                          color: context.colors.primary),
                    ),
                  ),
                ],
              )
            ],
          ),
          Gaps.vGap13,
          Text(
            'Picked ${data.product.productPickedPercent!}%',
            style:
            AppTextStyle.s14_w400(color: context.colors.textColor),
          )
        ],
      ),
    );
  }
}
