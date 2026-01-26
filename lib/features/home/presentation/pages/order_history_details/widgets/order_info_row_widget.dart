import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';

class OrderInfoRowWidget extends StatelessWidget {
  final String label;
  final String value;
  final bool isBoldValue;
  final Color? valueColor;

  const OrderInfoRowWidget({
    super.key,
    required this.label,
    required this.value,
    this.isBoldValue = false,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label : ",
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          ),
          Expanded(
            child: Text(
              value,
              style: isBoldValue
                  ? AppTextStyle.s15_w700(
                      color: valueColor ?? context.colors.black).copyWith(
                fontFamily: AppTheme.dirhamFontFamily
              )
                  : AppTextStyle.s15_w500(
                      color: valueColor ?? context.colors.black).copyWith(
                fontFamily: AppTheme.dirhamFontFamily
            ),
            ),
          ),
        ],
      ),
    );
  }
}
