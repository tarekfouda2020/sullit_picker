
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/picker_notes_widget.dart';

import '../../../../../../core/helpers/export.dart';

class UpdateReasonDialogWidget extends StatelessWidget {
  final OrderDetailsController controller;
 final void Function() onPressSubmit;
  const UpdateReasonDialogWidget({super.key, required this.controller, required this.onPressSubmit});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(
       Translate.s.update_reason,
        textAlign: TextAlign.center,
        style: AppTextStyle.s18_w700(color: context.colors.textColor),
    ),
    // titlePadding: const EdgeInsets.fromLTRB(38, 25, 38, 11),
    backgroundColor: context.colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    content: Form(
      key: controller.replaceReasonKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PickerNotesWidget(controller: controller),
          Gaps.vGap15,
          AppTextButton.maxCustom(
            text: Translate.s.submit,
          onPressed: onPressSubmit,
          )
        ],
      ),
    )
    );
  }
}
