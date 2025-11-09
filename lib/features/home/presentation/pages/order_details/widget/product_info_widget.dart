
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';

class ProductInfoWidget extends StatelessWidget {
  final OrderDetailsModel data;
  const ProductInfoWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data.product!.name} ${data.variation} ${ data.product!.unit.validateIfItWeight() == true
                    ?""
                    :", ${data.product!.unit}" }",
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: AppTextStyle.s14_w600(
                  color: context.colors.simiGray,
                ).copyWith(height: 1.15),
              ),
              if(data.product!.unit.validateIfItWeight() == true)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    data.variation,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    style: AppTextStyle.s14_w600(
                      color: context.colors.simiGray,
                    ).copyWith(height: 1.15),
                  ),
                ),
              Gaps.vGap4,
              Row(
                children: [
                  Text(
                    "${Translate.s.price} : ",
                    style: AppTextStyle.s14_w600(
                      color: context.colors.primary,
                    ),
                  ),
                  Text(
                    data.price,
                    style: AppTextStyle.s16_w600(
                      color: context.colors.primary,
                    ),
                  ).withDirhamSymbol()
                ],
              )   ,

            ],
          ),
        ),
        const SizedBox(width: 90)
      ],
    );
  }
}
