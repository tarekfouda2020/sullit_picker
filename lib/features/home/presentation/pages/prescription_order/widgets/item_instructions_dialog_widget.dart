import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import '../../../../../../core/helpers/export.dart';

class ItemInstructionsDialogWidget extends StatelessWidget {
  final TextEditingController instructionsController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onConfirm;

  const ItemInstructionsDialogWidget({
    super.key,
    required this.instructionsController,
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
        Translate.s.instructions,
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
                fieldTypes: FieldTypes.rich,
                max: 4,
                 textHeight: 1.35,
                controller: instructionsController,
                fillColor: context.colors.background,
                type: TextInputType.multiline,
                action: TextInputAction.newline,
                hint: Translate.s.enter_instructions,
                margin: const EdgeInsets.only(bottom: 24),
                onSubmit: onConfirm,
                validate: (String? value) => value?.validateEmpty(),
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
