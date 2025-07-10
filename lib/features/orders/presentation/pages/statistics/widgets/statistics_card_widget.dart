import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

import 'statistics_widgets_imports.dart';

class StatisticsCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final bool showSuccess;
  final bool showFailed;

  const StatisticsCardWidget({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.showSuccess = false,
    this.showFailed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                ),
                Gaps.vGap12,
                Text(
                  value,
                  style: AppTextStyle.s22_w600(color: context.colors.primary),
                ),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset(icon, width: 48, height: 48),
              if (showSuccess)
                Positioned(
                  right: -4.5,
                  bottom: 3,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: UnconstrainedBox(
                        child: SvgPicture.asset(
                      Res.checkIcon,
                      width: 7,
                      height: 7,
                      colorFilter: ColorFilter.mode(
                        context.colors.white,
                        BlendMode.srcIn,
                      ),
                    )),
                  ),
                ),
              if (showFailed)
                Positioned(
                  right: -4.5,
                  bottom: 3,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration:  BoxDecoration(
                      color: context.colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: UnconstrainedBox(
                        child: SvgPicture.asset(
                      Res.closeIcon,
                      width: 8,
                      height: 8,
                      colorFilter: ColorFilter.mode(
                        context.colors.white,
                        BlendMode.srcIn,
                      ),
                    )),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
