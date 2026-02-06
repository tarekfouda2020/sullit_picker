import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';

class PickerNotesWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final void Function()? onSubmit;
  const PickerNotesWidget({super.key, required this.controller, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
        controller: controller.pickerNoteController,
        fieldTypes: FieldTypes.rich,
        type: TextInputType.multiline,
        max: 5,
        action: TextInputAction.done,
        radius: Dimens.borderRadius16PX,
        validate: (value) => value!.validateEmpty(),
        onSubmit: onSubmit,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
        fillColor: context.colors.background,
        // hint: Translate.of(context).picker_note_hint,
        hint: Translate.s.modify_reason,
        hintColor: context.colors.textColor,
        hintTxtStyle: AppTextStyle.s14_w400(color: context.colors.textColor));
  }
}
