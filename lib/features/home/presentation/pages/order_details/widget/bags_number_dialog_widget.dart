import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';

class BagsNumberDialogWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const BagsNumberDialogWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Res.warningIcon,
              width: 61,
              height: 61,
            ),
            Gaps.vGap21,
            Text(
              Translate.s.confirm_used_bags,
              style: AppTextStyle.s18_w700(color: context.colors.black)
                  .copyWith(height: 1.2),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap24,
            Form(
              key: controller.bagsCountFormKey,
              child: GenericTextField(
                controller: controller.bagsCountController ,
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.number,
                  action: TextInputAction.done,
                  fillColor: context.colors.background,
                  validate: (value) => value?.validateEmpty(),
                margin: const EdgeInsets.only(bottom: 20),
                hint: Translate.s.enter_bag_number,
              ),
            ),
            AppTextButton.maxCustom(
                text: Translate.s.complete_dispatch,
              textSize: 18,
              txtColor: context.colors.white,
              bgColor: context.colors.appGreen,
              onPressed: ()=> controller.prepareOrder(context),
            )
          ],
        ),
      ),
    );
  }
}
