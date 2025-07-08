import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/home/data/enum/report_reason_enum.dart';

import 'home_widgets_imports.dart';

class ReportItemWidget extends StatelessWidget {
  final ReportReasonEnum reason;
  final bool isSelected;
  final HomeController controller;

  const ReportItemWidget({
    super.key,
    required this.reason,
    required this.isSelected,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.updateReasonObs(reason),
      child: Container(
        height: 44,
        margin: const EdgeInsets.only(bottom: 12),
        alignment: Alignment.center,
        padding: const EdgeInsetsDirectional.only(start: 31, end: 27),
        decoration: BoxDecoration(
            color: isSelected ? context.colors.lightPrimary : context.colors.white,
            borderRadius: Dimens.borderRadius30PX,
            border: Border.all(color: isSelected ? context.colors.primary : context.colors.borderLight)),
        child: Row(
          children: [
            Expanded(
              child: Text(
                reason.getTitle,
                style: AppTextStyle.s14_w400(color: isSelected ? context.colors.primary : context.colors.stone),
              ),
            ),
            if (isSelected)
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
