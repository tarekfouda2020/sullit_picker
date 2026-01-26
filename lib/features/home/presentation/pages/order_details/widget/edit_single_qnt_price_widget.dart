import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/helpers/export.dart';
import 'edit_price_widget.dart';

class EditSingleQntPriceWidget extends StatelessWidget {
  final OrderDetailsModel model;
  final OrderDetailsController controller;
  const EditSingleQntPriceWidget({super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical:10),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: Dimens.borderRadius12PX
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Item Price : ",
                style: AppTextStyle.s14_w300(
                  color: context.colors.simiGray,
                ),
              ),
              Text(
               model.unitPrice,
                style: AppTextStyle.s16_w400(
                  color: context.colors.primary,
                ),
              ).withDirhamSymbol(
                  symbolStyle: AppTextStyle.s18_w400(color: context.colors.primary)
              ),
              if(!model.hasNoFixedPriceYet)
              Row(
                children: [
                  Gaps.hGap10,
                  Text("Edited - ",
                    style: AppTextStyle.s12_w300(color: context.colors.black),
                  ),
                  DirhamPrice(amount: "${model.fixedUnitPrice}",
                  textStyle: AppTextStyle.s16_w400(
                    color: context.colors.textColor,
                  ).copyWith(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: context.colors.textColor
                  ),
                    currencyStyle: AppTextStyle.s18_w400(color: context.colors.textColor).copyWith(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: context.colors.textColor
                    ),
                  )
                ],
              ),
              const Spacer(),
              if(model.product!.showEditPrice == true && model.product!.productStatus!.shouldShowEditPriceIcon)
                EditPriceWidget(
                onTap: () => controller.showNewPriceDialog(context,model,popTwice: false),
                ),
            ],
          ),
          Gaps.vGap8,
          if(model.pickerNotes !=null && model.pickerNotes?.isNotEmpty == true)
          Row(
            children: [
              Text("Reason: ",
              style: AppTextStyle.s12_w300(color: context.colors.black),
              ),
              Text(model.pickerNotes!,
                style: AppTextStyle.s12_w400(color: context.colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }


  // String _getPrice() {
  //   if(model.product!.replaced){
  //     return " ${model.price} ${model.variation.validateIfItWeight() == true
  //         ?"/${model.variation}"
  //         :""}";
  //   }
  //   return "${model.getProductPrice} ${model.variation.validateIfItWeight() == true
  //       ?"/${model.variation}"
  //       :""}";
  // }


}
