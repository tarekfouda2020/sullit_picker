import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';

class DialogNewWeightWidget extends StatelessWidget {
  final OrderDetailsModel orderProduct;
  final OrderDetailsController controller;
  const DialogNewWeightWidget(
      {super.key, required this.orderProduct, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        Translate.s.what_is_new_weight,
        // "Enter the new price",
        style: AppTextStyle.s18_w700(color: context.colors.textColor),
      ),
      // titlePadding: const EdgeInsets.fromLTRB(38, 25, 38, 11),
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      content: Form(
        key: controller.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                CachedImage(
                  url: orderProduct.product?.thumbnailImage ?? "",
                  width: 52,
                  height: 52,
                  haveRadius: false,
                  boxShape: BoxShape.circle,
                ),
                Gaps.hGap10,
                Text(
                  orderProduct.product?.name ?? "",
                  style: AppTextStyle.s14_w600(color: context.colors.textColor)
                      .copyWith(height: 1.2),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Gaps.vGap10,
            Flexible(
              child: GenericTextField(
                controller: controller.newWeightController,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.number,
                action: TextInputAction.done,
                validate: (value) => value!.validateEmpty(),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                fillColor: context.colors.background,
                hint: Translate.s.enter_new_weight,
                hintColor: context.colors.textColor,
                hintTxtStyle:
                    AppTextStyle.s14_w400(color: context.colors.textColor),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      controller.getProductWeightUnit(orderProduct),
                      style: AppTextStyle.s13_w500(color: context.colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Gaps.vGap11,
            Flexible(
              child: GenericTextField(
                controller: controller.newPriceController,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.number,
                action: TextInputAction.done,
                validate: (value) => value!.validateEmpty(),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 11),
                fillColor: context.colors.background,
                hint: Translate.s.enter_new_price,
                hintColor: context.colors.textColor,
                hintTxtStyle:
                    AppTextStyle.s14_w400(color: context.colors.textColor),
                suffixIcon: Text(
                  "",
                  style: AppTextStyle.s15_w500(color: context.colors.primary),
                ).withDirhamSymbol(),
              ),
            ),
            Gaps.vGap11,
            Row(
              children: [
                SvgPicture.asset(
                  Res.warningIcon,
                  width: 17,
                  height: 17,
                ),
                Gaps.hGap4,
                Flexible(
                  child: Text(
                    "${Translate.s.new_weight_must_not_less_than} ${controller.productMinimumNewWeight(orderProduct)} ${controller.getProductWeightUnit(orderProduct)}",
                    style: AppTextStyle.s12_w300(color: context.colors.primary)
                        .copyWith(height: 1.2),
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    softWrap: true,
                  ),
                ),
              ],
            ),
            Gaps.vGap28,
            AppTextButton.maxCustom(
              text: Translate.s.app_confirm,
              txtColor: context.colors.white,
              textSize: 16,
              bgColor: context.colors.primary,
              maxHeight: 40,
              onPressed: () =>
                  controller.confirmNewWeight(orderProduct, context),
            ),
          ],
        ),
      ),
    );
  }
}
