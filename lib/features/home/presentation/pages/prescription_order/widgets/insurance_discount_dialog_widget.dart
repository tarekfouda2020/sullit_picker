import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import '../../../../../../core/helpers/export.dart';

class InsuranceDiscountDialogWidget extends StatelessWidget {
  final TextEditingController discountController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onConfirm;

  const InsuranceDiscountDialogWidget({
    super.key,
    required this.discountController,
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
        Translate.s.insurance_discount,
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
                controller: discountController,
                fillColor: context.colors.background,
                type: TextInputType.numberWithOptions(decimal: true),
                action: TextInputAction.done,
                validate: (value) => value?.validatePrice(maxPrice: double.infinity),
                hint: Translate.s.enter_insurance_discount,
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
