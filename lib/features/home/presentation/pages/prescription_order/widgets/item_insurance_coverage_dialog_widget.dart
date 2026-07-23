import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import '../../../../../../core/helpers/export.dart';

class ItemInsuranceCoverageDialogWidget extends StatelessWidget {
  final TextEditingController coverageController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onConfirm;

  const ItemInsuranceCoverageDialogWidget({
    super.key,
    required this.coverageController,
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
        Translate.s.insurance_coverage,
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
                controller: coverageController,
                fillColor: context.colors.background,
                type: const TextInputType.numberWithOptions(decimal: true),
                action: TextInputAction.done,
                validate: (value) => value?.validatePrice(maxPrice: 100),
                hint: Translate.s.enter_insurance_coverage,
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
