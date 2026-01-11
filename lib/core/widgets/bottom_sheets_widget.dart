import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/actions_sheet_widget.dart';

class BottomSheetsWidget {

  static void showContactWithSheet(BuildContext context, String phoneNumber,{String? title}){

    showCupertinoModalPopup(
      barrierDismissible: true,
      context: context,
      builder: (context) {
      return CallingCustomerSheetWidget(
        phoneNumber: phoneNumber,
        title: title,
      );
    },);

  }


}