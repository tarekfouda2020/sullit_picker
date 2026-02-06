import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/barcode_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/edit_single_qnt_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/old_replaced_item_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/product_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/return_item_button_widget.dart';
import 'pick_item_button_widget.dart';
import 'widgets_imports.dart';

class CardItemPickWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel data;
  final BaseBloc<bool> loadingCubit;
  const CardItemPickWidget({
    super.key,
    required this.controller,
    required this.data,
    required this.loadingCubit,
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
          if (data.product?.productStatus?.shouldShowStatus == true)
            Gaps.vGap15,
          ProductInfoWidget(data: data),
          Gaps.vGap15,
          if (data.product?.isAdded == true && data.oldReplacedModel != null)
            OldReplacedItemWidget(model: data.oldReplacedModel!),
          Column(
            spacing: 5,
            children: [
              EditSingleQntPriceWidget(
                model: data,
                controller: controller,
                loadingCubit: loadingCubit,
              ),
              BarcodePriceWidget(data: data),
              Divider(
                color: context.colors.disableGray,
                thickness: 1.3,
              )
            ],
          ),
          PickItemButtonWidget(
              controller: controller, data: data, loadingCubit: loadingCubit),
          Gaps.vGap10,
          if (data.product!.pickedQuantity! > 0 ||
              data.product!.replaced ||
              data.product!.isAdded)
    ReturnItemButtonWidget(
                onPress: () =>
                    controller.returnPickedItem(context, data, loadingCubit)),
          // if( data.product!.modified)
          //   ReturnItemButtonWidget(onPress:() => controller.returnPickedItem(context,data)),
          Gaps.vGap13,
          Text(
            '${Translate.s.picked} ${data.product!.productPickedPercent!.toStringAsFixed(2)}%',
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          )
        ],
      ),
    );
  }
}
