import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/constants/lang_code.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_config.dart';

@lazySingleton
class Utilities {

  Future<void> changeLanguage(String lang, BuildContext context) async {
    context.read<DeviceCubit>().updateLanguage(Locale(lang));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(ApplicationConstants.langKey, lang);
    if(lang == ApplicationConstants.langAR){
      lang = "sa";
    }
    if(lang == ApplicationConstants.langBN){
      lang = LangCode.bd;
    }
    if(lang == ApplicationConstants.langUR){
      lang = LangCode.pk;
    }
    GlobalState.instance.set(ApplicationConstants.langKey, lang);
  }

  void launchURL({required String url}) async {
    var uri = Uri.parse(url);
    await launchUrl(uri);
  }


  void launchWhatsApp(phone,{String? msg}) async {
    String message = 'مرحبا';
    String whatsUrl = "";
    if (Platform.isAndroid) {
      whatsUrl = "https://wa.me/$phone/?text=${msg ?? message}";
    } else {
      whatsUrl = "https://api.whatsapp.com/send?phone=$phone&text=${msg ?? message}";
    }
    var uri = Uri.parse(whatsUrl);
    await launchUrl(uri);

    // final Uri url =
    // Uri(scheme: 'https', host: 'wa.me', path: phone);
    //
    // launchUrl(url);
  }


  String cleanHtml(String html) {
    return html
        .replaceAll(RegExp(r'<span[^>]*>|</span>'), '')
        .replaceAll(RegExp(r'<o:p>.*?</o:p>', dotAll: true), '')
        .replaceAll(RegExp(r'style="[^"]*"'), '')
        .replaceAll(RegExp(r'class="[^"]*"'), '')
        .replaceAll(RegExp(r'mso-[^:]+:[^;"]+;?'), '')
        .replaceAll(RegExp(r'&nbsp;'), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .replaceAll(RegExp(r'margin(-left|-right)?\s*:\s*\d+(\.\d+)?(px|pt|em)?;?'), '')
        .replaceAll(RegExp(r'padding(-left|-right)?\s*:\s*\d+(\.\d+)?(px|pt|em)?;?'), '')
        .trim();
  }





  String formatAmount(String value) {
    final parsed = double.tryParse(value.cleanNumber()) ?? 0;
    final intValue = parsed.toStringAsFixed(2);

    final formattedInteger = intValue.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (match) => '${match.group(1)},',
    );

    return formattedInteger;
  }


  void openAppInStore(){
    String url = "";
    if(Platform.isAndroid){
      String id = AppConfig.instance.appId;
      url = "https://play.google.com/store/apps/details?id=$id";
    }
    if(Platform.isIOS){
      int id = int.parse(AppConfig.instance.iosAppId);
      url = "https://apps.apple.com/us/app/id$id";
    }
    var uri = Uri.parse(url);
    launchUrl(uri);
  }


  String convertDigitsToLatin(String s) {
    var sb = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }


}
