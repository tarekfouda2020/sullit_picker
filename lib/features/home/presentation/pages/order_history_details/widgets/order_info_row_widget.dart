import 'package:flutter_tdd/core/helpers/export.dart';

class OrderInfoRowWidget extends StatelessWidget {
  final String label;
  final String value;
  final bool isBoldValue;

  const OrderInfoRowWidget(
      {super.key,
      required this.label,
      required this.value,
      this.isBoldValue = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label : ",
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          Expanded(
            child: Text(
              value,
              style: isBoldValue
                  ? AppTextStyle.s14_w600(color: context.colors.black)
                  : AppTextStyle.s14_w500(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
