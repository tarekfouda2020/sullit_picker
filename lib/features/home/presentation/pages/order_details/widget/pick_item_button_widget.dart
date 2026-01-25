import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';
import 'qnt_count_widget.dart';

class PickItemButtonWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel data;

  const PickItemButtonWidget(
      {super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 6,
      children: [
        Flexible(
          child: AppTextButton.maxCustom(
            text: controller.isProductFullPicked(data)
                ? "${Translate.of(context).picked} ${data.product!.pickedQuantity!}/${data.quantity}"
                : "${Translate.of(context).pick} ${data.product!.pickedQuantity!}/${data.quantity}",
            bgColor: controller.isProductFullPicked(data)
                ? context.colors.softWhite
                : context.colors.primary,
            txtColor: controller.isProductFullPicked(data)
                ? context.colors.appGreen
                : context.colors.white,
            textSize: 16,
            maxHeight: 40,
            onPressed: () => controller.onPressPick(context, data),
          ),
        ),

        Flexible(
          child: AppTextButton.maxCustom(
            text: Translate.of(context).pick_all,
            bgColor: controller.isProductFullPicked(data)
                ? context.colors.softWhite
                : ((data.product!.pickedQuantity ?? 0) > 0
                    ? context.colors.primary.withOpacity(0.4)
                    : context.colors.primary),
            txtColor: controller.isProductFullPicked(data)
                ? context.colors.appGreen
                : context.colors.white,
            textSize: 16,
            maxHeight: 40,
            onPressed: (data.product!.pickedQuantity ?? 0) > 0
                ? null
                : () => controller.onPressPick(context, data, pickAll: true),
          ),
        ),

        Column(
          children: [
            Text(
              Translate.of(context).qnt,
              style: AppTextStyle.s14_w400(color: context.colors.textColor),
            ),
            Gaps.vGap8,
            QntCountWidget(
              qnt: data.remainQnt,
            ),
          ],
        ),
        if(!controller.isProductFullPicked(data) && data.remainQnt  > 1 && data.product?.productStatus?.shouldShowReduceIcon == true)
        GestureDetector(
          onTap: () => controller.editQuantity(context, data),
          child: Container(
        padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(bottom: 4),
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.primary,
            ),
            child: const Icon(CupertinoIcons.minus,
              color: CupertinoColors.white,
              size:20,
            ),
          ),
        )
      ],
    );
  }
}
