import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';

class ModifyBagsCountDialogWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const ModifyBagsCountDialogWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
      title: Text(
        Translate.s.modify_bags_number,
        textAlign: TextAlign.center,
        style: AppTextStyle.s18_w700(color: context.colors.black),
      ),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Form(
                key: controller.bagsCountFormKey,
                child: GenericTextField(
                  fieldTypes: FieldTypes.normal,
                  controller: controller.newCountController,
                  fillColor: context.colors.background,
                  type: TextInputType.number,
                  action: TextInputAction.done,
                  validate: (value) => value?.validateBagsCount(),
                  hint: Translate.s.enter_bag_number,
                  margin: const EdgeInsets.only(bottom: 24),
                  onSubmit: () => controller.changeUsedBagsCount(context),
                )),
            AppTextButton.maxCustom(
              text: Translate.s.confirm,
              textSize: 18,
              txtColor: context.colors.white,
              bgColor: context.colors.appGreen,
              onPressed: () => controller.changeUsedBagsCount(context),
            )
          ],
        ),
      ),
    );
  }
}
