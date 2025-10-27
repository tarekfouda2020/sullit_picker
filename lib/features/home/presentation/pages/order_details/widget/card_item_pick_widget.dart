import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/qnt_count_widget.dart';

import 'widgets_imports.dart';

class CardItemPickWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel data;

  const CardItemPickWidget({
    super.key,
    required this.controller,
    required this.data,
  });

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
                url: data.product!.thumbnailImage,
                haveRadius: false,
                boxShape: BoxShape.circle,
              ),
              Gaps.hGap10,
              Expanded(
                child: Text(
                  "${data.product!.name} ${data.variation}",
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: AppTextStyle.s14_w600(
                    color: context.colors.simiGray,
                  ).copyWith(height: 1.15),
                ),
              ),
              const SizedBox(width: 120)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: AppTextButton.maxCustom(
                  text:
                      controller.isProductFullPicked(data) ? Translate.of(context).picked : Translate.of(context).pick,
                  bgColor: controller.isProductFullPicked(data) ? context.colors.softWhite : context.colors.primary,
                  txtColor: controller.isProductFullPicked(data) ? context.colors.appGreen : context.colors.white,
                  textSize: 16,
                  maxHeight: 40,
                  onPressed: () => controller.pickItem(data),
                ),
              ),
              Gaps.hGap6,
              Column(
                children: [
                  Text(
                    Translate.of(context).qnt,
                    style: AppTextStyle.s14_w400(color: context.colors.textColor),
                  ),
                  Gaps.vGap8,
                  QntCountWidget(
                    qnt: data.quantity - data.product!.pickedQuantity!,
                  ),
                  // Gaps.vGap8,
                  // GestureDetector(
                  //   onTap: () => controller.showWeightDialog(context),
                  //   child: Text(
                  //     'Edit Qnt',
                  //     style: AppTextStyle.s14_w400(
                  //         color: context.colors.textColor),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
          Gaps.vGap13,
          Text(
            '${Translate.of(context).picked} ${data.product!.productPickedPercent!.toStringAsFixed(2)}%',
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          )
        ],
      ),
    );
  }
}
