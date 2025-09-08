import 'package:flutter_tdd/features/home/data/model/report_reason_model/report_reason_model.dart';

import 'home_widgets_imports.dart';

class ReportItemWidget extends StatelessWidget {
  final ReportReasonModel reason;
  final HomeController controller;

  const ReportItemWidget({
    super.key,
    required this.reason,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.reportReasonsRequester.selectReason(reason),
      child: Container(
        height: Dimens.dp44,
        margin: const EdgeInsets.only(bottom: 12),
        alignment: Alignment.center,
        padding: Dimens.paddingStart31End27Px,
        decoration: BoxDecoration(
            color: reason.isSelected! ? context.colors.lightPrimary : context.colors.white,
            borderRadius: Dimens.borderRadius30PX,
            border: Border.all(color: reason.isSelected! ? context.colors.primary : context.colors.borderLight)),
        child: Row(
          children: [
            Expanded(
              child: Text(
                reason.label,
                style: AppTextStyle.s14_w400(color: reason.isSelected! ? context.colors.primary : context.colors.stone),
              ),
            ),
            if (reason.isSelected!)
              SvgPicture.asset(
                Res.checkIcon,
                width: 12,
                height: 9,
              )
          ],
        ),
      ),
    );
  }
}
