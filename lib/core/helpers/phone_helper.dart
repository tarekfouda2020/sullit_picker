import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

import 'psermission_services.dart';
import 'package:flutter/material.dart';

class PhoneHelper {

  static String handlePhone(String phone) {
    if (phone.startsWith("0")) {
      return phone.substring(1);
    }
    return phone;
  }


  static void callPhone(String phoneNumber,BuildContext context)async{
    bool contactPermission = await getIt<PermissionServices>().requestPermission(Permission.contacts, context);
    if(contactPermission){
      final Uri phone = Uri(
          scheme: "tel",
          path: phoneNumber
      );
      await launchUrl(phone);
    }
  }

}