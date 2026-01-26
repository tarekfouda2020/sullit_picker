import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/picker_notes_widget.dart';

import '../../../../../../core/helpers/export.dart';

class EnterNewPriceDialogWidget extends StatelessWidget {
  final OrderDetailsModel orderProduct;
  final OrderDetailsController controller;
final bool popTwice;
final bool pickAll;
  const EnterNewPriceDialogWidget({
    super.key,
    required this.orderProduct,
    required this.controller,
     this.popTwice = true,
     this.pickAll = false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Modify Price",
        textAlign: TextAlign.center,
        style: AppTextStyle.s18_w700(color: context.colors.black),
      ),
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
                Flexible(
                  child: Text(
                    orderProduct.product?.name ?? "",
                    // "علبه اناناس قطع كثيره الطعم واللون والرائحه و هيب الديربق اه يا لالى عينى يا لالي على الى اتغرب ",
                    style: AppTextStyle.s14_w600(color: context.colors.textColor)
                        .copyWith(height: 1.2),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Gaps.vGap10,
            Flexible(
              child: GenericTextField(
                controller: controller.newPriceController,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.number,
                action: TextInputAction.next,
                validate: (value) => value!.validatePrice(maxPrice: maxPrice),
                contentPadding: const EdgeInsets.symmetric(horizontal: 36, vertical: 11),
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
            Flexible(
              child : PickerNotesWidget(
                controller: controller,
                onSubmit: () => controller.confirmNewPrice(orderProduct, context,popTwice: popTwice,pickAll: pickAll)
              ),
            ),
            Gaps.vGap28,
            AppTextButton.maxCustom(
              text: Translate.of(context).app_confirm,
              txtColor: context.colors.white,
              textSize: 16,
              bgColor: context.colors.primary,
              maxHeight: 40,
              onPressed: () => controller.confirmNewPrice(orderProduct, context,popTwice: popTwice,pickAll: pickAll),
            ),
          ],
        ),
      ),
    );
  }

  double get maxPrice {
    if(orderProduct.fixedUnitPrice == null  || orderProduct.fixedUnitPrice == 0.0) {
      return double.parse(orderProduct.unitPrice);
    }else{
      return orderProduct.fixedUnitPrice!;
    }
  }


}
