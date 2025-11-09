import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'psermission_services.dart';

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




  static String handleFullPhone(BuildContext context,String phone){
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if(lang == ApplicationConstants.langAR || lang == ApplicationConstants.langUR){
      var split = phone.split("");
      split.removeAt(0);
      var phoneWithoutPlus = split.join();
      return "$phoneWithoutPlus+";
    }else{
      return phone;
    }
  }


}