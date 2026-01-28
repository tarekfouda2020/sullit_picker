import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';

import '../../../../../../core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';

class OldReplacedItemWidget extends StatelessWidget {
  final OldReplacedModel model;

  const OldReplacedItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffF9F9F9),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedImage(
                    url: model.image,
                    height: 52,
                    width: 52,
                    fit: BoxFit.contain,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  Gaps.hGap10,
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width*.35,
                    child: Text(
                     "qwertyuiopasdfghjklzxcvbnm,wertyuixecrvtbynumi",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.s14_w400(color: context.colors.textColor)
                          .copyWith(height: 1.2,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                     Gaps.vGap25,
                      Text(
                        model.unitPrice,
                        style: AppTextStyle.s14_w600(
                          color:
                          context.colors.textColor,
                        ).copyWith(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: context.colors.textColor),
                      ).withDirhamSymbol(),
                      Gaps.vGap6,
                      Text(
                        "Qnt: ${model.qnt}",
                        style: AppTextStyle.s14_w400(
                            color: context.colors.black),
                      ),
                    ],
                  )
                ],
              ),
              Gaps.vGap8,
              RichText(
                text: TextSpan(
                  text: "Reason : ",
                  style: AppTextStyle.s13_w400(
                      color: context.colors.textColor),
                  children: [
                    TextSpan(
                      text: model.replaceReason,
                      style: AppTextStyle.s13_w500(
                          color: context.colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        PositionedDirectional(
          top: -10,
          end: 12,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xffFFF0F0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
               SvgPicture.asset(Res.repeatIcon,width: 11, height: 11,),
                Gaps.hGap4,
                Text(
                  "Replaced item",
                  style: AppTextStyle.s12_w300(color: context.colors.black)
                      .copyWith(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
