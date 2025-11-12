import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password_imports.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/barcode_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/edit_single_single_qnt_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/product_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/return_item_button_widget.dart';
import 'pick_item_button_widget.dart';
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
          ProductInfoWidget(data: data),
          Gaps.vGap15,
          Column(
            spacing: 5,
            children: [
              Divider(color: context.colors.disableGray,thickness:1.3,),
              EditSingleSingleQntPriceWidget(model: data,controller: controller,),
              Divider(color: context.colors.disableGray,thickness:1.3,),
              BarcodePriceWidget(data: data),
              Divider(color: context.colors.disableGray,thickness: 1.3,)
            ],
          ),
          PickItemButtonWidget(controller: controller,data: data),
          Gaps.vGap10,
          if(data.product!.pickedQuantity !> 0 || data.product!.replaced || data.product!.modified)
            ReturnItemButtonWidget(onPress: () => controller.returnPickedItem(context,data)),
          // if( data.product!.modified)
          //   ReturnItemButtonWidget(onPress:() => controller.returnPickedItem(context,data)),
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
