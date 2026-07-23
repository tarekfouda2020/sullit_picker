import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import '../../../../../../core/helpers/export.dart';

class PrescriptionBagsCountDialogWidget extends StatelessWidget {
  final TextEditingController bagsCountController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onConfirm;

  const PrescriptionBagsCountDialogWidget({
    super.key,
    required this.bagsCountController,
    required this.formKey,
    required this.onConfirm,
  });

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
              key: formKey,
              child: GenericTextField(
                fieldTypes: FieldTypes.normal,
                controller: bagsCountController,
                fillColor: context.colors.background,
                type: TextInputType.number,
                action: TextInputAction.done,
                validate: (value) => value?.validateBagsCount(),
                hint: Translate.s.enter_bag_number,
                margin: const EdgeInsets.only(bottom: 24),
                onSubmit: onConfirm,
              ),
            ),
            AppTextButton.maxCustom(
              text: Translate.s.confirm,
              textSize: 18,
              txtColor: context.colors.white,
              bgColor: context.colors.appGreen,
              onPressed: onConfirm,
            ),
          ],
        ),
      ),
    );
  }
}
