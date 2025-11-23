
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';
import 'qnt_count_widget.dart';

class PickItemButtonWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel data;
  const PickItemButtonWidget({super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: AppTextButton.maxCustom(
            text: controller.isProductFullPicked(data) ? Translate.of(context).picked : Translate.of(context).pick,
            bgColor: controller.isProductFullPicked(data) ? context.colors.softWhite : context.colors.primary,
            txtColor: controller.isProductFullPicked(data) ? context.colors.appGreen : context.colors.white,
            textSize: 16,
            maxHeight: 40,
            onPressed: () => controller.onPressPick(context, data),
          ),
        ),
        Gaps.hGap6,
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
                : () => controller.onPressPick(context, data,pickAll: true),
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
              qnt: data.remainQnt,
            ),
          ],
        )
      ],
    );
  }
}
