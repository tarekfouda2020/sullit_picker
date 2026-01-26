
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';

import '../../../../core/helpers/export.dart';

class CustomPhoneIconWidget extends StatelessWidget {
  final String phone;
  const CustomPhoneIconWidget({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> BottomSheetsWidget.showContactWithSheet(context, phone),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.colors.appGreen,
        ),
        child: UnconstrainedBox(
            child: SvgPicture.asset(
              Res.phoneIcon,
              width: 18,
              height: 18,
            )),
      ),
    );
  }
}
