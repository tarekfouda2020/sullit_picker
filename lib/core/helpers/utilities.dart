import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/constants/lang_code.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:url_launcher/url_launcher.dart';

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


  String parseCurrency(String text) {
    BuildContext ctx = getIt<GlobalContext>().context();
    String lang = ctx.read<DeviceCubit>().state.model.locale.languageCode;

    final Map<String, String> currencyMap = {
      "د.إ": "AED",
      "ر.س": "SAR",
      "ج.م": "EGP",
      "د.ك": "KWD",
    };

    final regExp = RegExp(r"([^\d\s]+)\s*([\d.,]+)");

    return text.replaceAllMapped(regExp, (match) {
      String currencyPart = match.group(1)!.trim();
      String numberPart = match.group(2)!.trim();

      if ((lang == ApplicationConstants.langEN || lang == ApplicationConstants.langBN ) && currencyMap.containsKey(currencyPart)) {
        currencyPart = currencyMap[currencyPart]!;
      }

      final double value = num.parse(numberPart.replaceAll(',', '')).toDouble();
      final formattedNumber = NumberFormat("#,##0.00", lang).format(value);

      return "$formattedNumber $currencyPart";
    });
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


  String getPrice(String text) {
    BuildContext ctx = getIt<GlobalContext>().context();
    // String lang = GlobalState.instance.get("lang");
    String lang = ctx.read<DeviceCubit>().state.model.locale.languageCode;
    final RegExp regExp = RegExp(r"^([^\d]+)?([\d.,]+)$");
    final match = regExp.firstMatch(text);
    if (match == null) return "0.00";
    String numberPart = match.group(2)!.replaceAll(",", "").trim();
    double value = double.tryParse(numberPart) ?? 0.0;

    return NumberFormat("#,##0.00", lang).format(value);
  }

  String getCurrency(String text) {
    BuildContext ctx = getIt<GlobalContext>().context();
    // String lang = GlobalState.instance.get("lang");
    String lang = ctx.read<DeviceCubit>().state.model.locale.languageCode;
    final RegExp regExp = RegExp(r"^([^\d]+)([\d.,]+)$");
    final match = regExp.firstMatch(text);
    if (match == null) return "";
    String currencyPart = match.group(1)!.trim();
    final Map<String, String> currencyMap = {
      "د.إ": "AED",
      "ر.س": "SAR",
      "ج.م": "EGP",
      "د.ك": "KWD",
    };
    if (lang == "en" && currencyMap.containsKey(currencyPart)) {
      return currencyMap[currencyPart]!;
    }
    return currencyPart;
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
