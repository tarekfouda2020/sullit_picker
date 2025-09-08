import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/data/model/report_reason_model/report_reason_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/report_item_widget.dart';
import 'package:flutter_tdd/features/orders/data/enum/order_status.dart';

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
                  Translate.of(context).report_a_problem,
                  style: AppTextStyle.s20_w700(color: context.colors.black),
                ),
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close, color: context.colors.black, size: 30))
              ],
            ),
            Gaps.vGap41,
            SingleChildScrollView(
              child: RequesterConsumer<List<ReportReasonModel>>(
                requester: controller.reportReasonsRequester,
                successBuilder: (context, data, isLoading) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...List.generate(data.length, (index) {
                        return ReportItemWidget(
                          reason: data[index],
                          controller: controller,
                        );
                      },),
                      if(controller.reportReasonsRequester.selectedReason?.isOther == true)
                      GenericTextField(
                        fieldTypes: FieldTypes.rich,
                        type: TextInputType.multiline,
                        action: TextInputAction.newline,
                        validate: (value) => value?.noValidate(),
                        radius: Dimens.borderRadius20PX,
                        fillColor: context.colors.white,
                        hint: Translate.of(context).write_reason_here,
                        hintColor: context.colors.stone,
                        enableBorderColor: context.colors.borderLight,
                        hintSize: 12,
                        max: 4,
                        controller: controller.reasonController,
                      ),
                      Visibility(
                        visible: controller.reportReasonsRequester.selectedReason?.isOther==true,
                          replacement: Gaps.vGap14,
                          child: Gaps.vGap26
                      ),
                      AppTextButton.maxPrimary(
                        text: Translate.of(context).send,
                      onPressed: () {
                          Navigator.pop(context);
                          controller.changeOrderStatus(status: OrderStatus.driverReported);
                      },
                      )
                    ],
                  );
                },
                failureBuilder: (context, error, callback) {
                  return Column(
                    children: [
                      Text(
                        'Error loading report reasons: ${error.message}',
                        style: AppTextStyle.s14_w500(color: context.colors.red),
                      ),
                      Gaps.vGap16,
                      AppTextButton.maxPrimary(
                        text: 'Retry',
                        onPressed: () => callback(),
                      ),
                    ],
                  );
                },
                loadingBuilder: (context) {
                  return Column(
                    children: List.generate(3,(index) {
                      return BaseShimmerWidget(child: Container(
                    height: Dimens.dp44,
                        decoration: const BoxDecoration(
                          borderRadius: Dimens.borderRadius30PX
                        ),
                      ));
                    },),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
