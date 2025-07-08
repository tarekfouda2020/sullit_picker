import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/home/data/enum/report_reason_enum.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/report_item_widget.dart';

import 'home_widgets_imports.dart';

class ReportBottomSheetWidget extends StatelessWidget {
  final HomeController controller;

  const ReportBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 21),
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: Dimens.sheetBorderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Gaps.hGap15,
                Text(
                  "Report a problem",
                  style: AppTextStyle.s20_w700(color: context.colors.black),
                ),
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close, color: context.colors.black, size: 30))
              ],
            ),
            Gaps.vGap41,
            SingleChildScrollView(
              child: ObsValueConsumer(
                  observable: controller.reportReasonObs,
                  builder: (context, value) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...ReportReasonEnum.values.map((reason) {
                          return ReportItemWidget(
                            reason: reason,
                            isSelected: reason == value,
                            controller: controller,
                          );
                        }),
                        if(value == ReportReasonEnum.other)
                        GenericTextField(
                          fieldTypes: FieldTypes.rich,
                          type: TextInputType.multiline,
                          action: TextInputAction.newline,
                          validate: (value) => value?.noValidate(),
                          radius: Dimens.borderRadius20PX,
                          fillColor: context.colors.white,
                          hint: "Write Reason here",
                          hintColor: context.colors.stone,
                          enableBorderColor: context.colors.borderLight,
                          hintSize: 12,
                          max: 4,
                          controller: controller.reasonController,
                        ),
                        Visibility(
                          visible:value == ReportReasonEnum.other ,
                            replacement: Gaps.vGap14,
                            child: Gaps.vGap26
                        ),
                        AppTextButton.maxPrimary(
                          text: "Send",
                        onPressed: ()=> Navigator.pop(context),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
