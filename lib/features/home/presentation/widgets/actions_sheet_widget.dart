import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';

import '../../../../core/helpers/export.dart';

class CallingCustomerSheetWidget extends StatelessWidget {
  final String phoneNumber;
  final String? title;
  const CallingCustomerSheetWidget({super.key, required this.phoneNumber, this.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data:  const CupertinoThemeData(
        brightness: Brightness.light,
        // primaryColor: Colors.teal,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        applyThemeToAll: true
      ),
      child: CupertinoActionSheet(
        title: Text(
          title ?? Translate.s.contact_with_customer_using,
          style: const AppTextStyle.s16_w600(color: CupertinoColors.systemGrey),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () => PhoneHelper.callPhone(phoneNumber, context),
            child:  Text(
              Translate.s.phone,
              style: const AppTextStyle.s18_w500(color: Colors.blue),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () => getIt<Utilities>().launchWhatsApp(phoneNumber),
            child:  Text(
              Translate.s.whatsapp,
              style: AppTextStyle.s18_w500(color: context.colors.green),
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child:  Text(Translate.s.cancel,
            style: AppTextStyle.s18_w500(color: context.colors.primary),
          ),
        ),
      ),
    );
  }
}