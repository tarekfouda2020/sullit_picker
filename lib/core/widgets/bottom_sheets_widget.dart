

import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/actions_sheet_widget.dart';

class BottomSheetsWidget {

  static void showContactWithSheet(BuildContext context, String phoneNumber){

    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
      return CallingCustomerSheetWidget(phoneNumber: phoneNumber,
      );
    },);

  }


}