import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';
import 'edit_price_widget.dart';

class EditSingleSingleQntPriceWidget extends StatelessWidget {
  final OrderDetailsModel model;
  final OrderDetailsController controller;
  const EditSingleSingleQntPriceWidget({super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${Translate.s.price} : ",
          style: AppTextStyle.s14_w500(
            color: context.colors.primary,
          ),
        ),
        Expanded(
          child: Text(
           model.unitPrice,
            style: AppTextStyle.s14_w500(
              color: context.colors.primary,
            ),
          ).withDirhamSymbol(
              symbolStyle: AppTextStyle.s16_w300(color: context.colors.primary)
          ),
        ),
        if(model.product!.showEditPrice == true && model.product!.productStatus!.shouldShowEditPriceIcon)
          EditPriceWidget(controller: controller,model: model),
      ],
    );
  }


  String _getPrice() {
    if(model.product!.replaced){
      return " ${model.price} ${model.variation.validateIfItWeight() == true
          ?"/${model.variation}"
          :""}";
    }
    return "${model.getProductPrice} ${model.variation.validateIfItWeight() == true
        ?"/${model.variation}"
        :""}";
  }


}
