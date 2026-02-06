import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../core/helpers/export.dart';
import 'edit_price_widget.dart';

class EditSingleQntPriceWidget extends StatelessWidget {
  final OrderDetailsModel model;
  final OrderDetailsController controller;
  final BaseBloc<bool> loadingCubit;

  const EditSingleQntPriceWidget({
    super.key,
    required this.model,
    required this.controller,
    required this.loadingCubit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: Dimens.borderRadius12PX),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                Translate.s.item_price,
                style: AppTextStyle.s14_w300(
                  color: context.colors.simiGray,
                ),
              ),
              Text(
                model.unitPrice,
                style: AppTextStyle.s18_w800(
                  color: context.colors.primary,
                ),
              ).withDirhamSymbol(
                  symbolStyle:
                      AppTextStyle.s20_w400(color: context.colors.primary)),
              if (!model.hasNoFixedPriceYet)
                Row(
                  children: [
                    Gaps.hGap10,
                    Text(
                      Translate.s.edited,
                      style: AppTextStyle.s12_w300(color: context.colors.black),
                    ),
                    DirhamPrice(
                      amount: "${model.fixedUnitPrice}",
                      textStyle: AppTextStyle.s16_w400(
                        color: context.colors.textColor,
                      ).copyWith(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: context.colors.textColor),
                      currencyStyle:
                          AppTextStyle.s18_w400(color: context.colors.textColor)
                              .copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: context.colors.textColor),
                    )
                  ],
                ),
              const Spacer(),
              if (_showEditPrice())
                EditPriceWidget(
                  onTap: () => controller.showNewPriceDialog(
                      context, model, loadingCubit,
                      popTwice: false),
                ),
            ],
          ),
          if (_showPickerNote())
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ReadMoreText(
                "${Translate.s.reason}: ${model.pickerNotes!}",
                trimMode: TrimMode.Line,
                trimLines: 2,
                colorClickableText: context.colors.primary,
                trimCollapsedText: Translate.s.show_more,
                trimExpandedText: Translate.s.show_less,
                style: AppTextStyle.s12_w300(color: context.colors.black)
                    .copyWith(height: 1.3),
                moreStyle: AppTextStyle.s12_w300(color: context.colors.primary),
              ),
            ),
        ],
      ),
    );
  }

  bool _showPickerNote() =>
      model.pickerNotes != null &&
      model.pickerNotes?.isNotEmpty == true &&
      model.product?.isAdded == false;

  bool _showEditPrice() =>
      model.product!.showEditPrice == true &&
      model.product!.productStatus!.shouldShowEditPriceIcon &&
      controller.isProductFullPicked(model);
}
