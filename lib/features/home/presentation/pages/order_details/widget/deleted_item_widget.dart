
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/qnt_count_widget.dart';

import '../../../../../../core/helpers/export.dart';

class DeletedItemWidget extends StatelessWidget {
  final OrderDetailsModel item;
  final OrderDetailsController controller;
  const DeletedItemWidget({super.key, required this.item, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 9),
          decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius10PX,
              border: Border.all(
                  color: context.colors.gray58.withAlpha(170)
              )
          ),
          child: Row(
            children: [
              CachedImage(
                height: 52,
                width: 52,
                url: item.product!.thumbnailImage,
                haveRadius: false,
                boxShape: BoxShape.circle,
              ),
              Gaps.hGap10,
              Text(
                "${item.product!.name} ${item.variation}",
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: AppTextStyle.s14_w600(
                    color: context.colors.simiGray),
              ),
            ],
          ),
        ),
        Gaps.vGap15,
        AppTextButton.maxCustom(
          text: "Return (${item.product!.pickedQuantity!})",
          bgColor: context.colors.primary,
        txtColor: context.colors.white,
          maxHeight: 45,
          onPressed: () => controller.returnDeleteProduct(context,item.id),
        ),
        Gaps.vGap10,
      ],
    );
  }
}
