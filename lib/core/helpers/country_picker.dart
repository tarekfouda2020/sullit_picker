import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../theme/text/app_text_style.dart';

class CountryPicker {

  static FlCountryCodePicker _countryCodePicker(BuildContext context){
    return FlCountryCodePicker(
        title: Padding(padding: const EdgeInsets.all(15),
          child: Text(Translate.s.select_country,
            style: AppTextStyle.s18_w500(color: context.colors.black),
          ),
        ),
        countryTextStyle: AppTextStyle.s14_w400(color: context.colors.black),
        dialCodeTextStyle: AppTextStyle.s14_w400(color: context.colors.black) ,
        searchBarTextStyle: AppTextStyle.s14_w400(color: context.colors.black),
        searchBarDecoration:  InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            )
        )
    );
  }


  static Future<CountryCode?> selectCountrySheet(BuildContext context) async {
    final selectedCountry = await _countryCodePicker(context).showPicker(context: context,
      backgroundColor: context.colors.white,
    );
    return selectedCountry;
  }
}