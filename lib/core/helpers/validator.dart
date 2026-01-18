import 'package:country_phone_validator/country_phone_validator.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

extension Validator on String {

  String? noValidate() {
    return null;
  }

  String? validateEmpty({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    }
    return null;
  }

  String? validateName({String? message}) {
    if (trim().isEmpty) {
      return message ??  Translate.s.fillField;
    }else if(length<3 || length>30){
      return  message ??  Translate.s.nameValidation;
    }
    return null;
  }


  String? validatePassword({String? message}) {
    if (trim().isEmpty) {
      return message ??  Translate.s.fillField;
    } else if (!RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this)) {
      return message ?? Translate.s.passValidation;
    }
    return null;
  }

  String? validateEmail({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return message ?? Translate.s.mailValidation;
    }
    return null;
  }

  String? validateEmailORNull({String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? Translate.s.mailValidation;
      }
    }
    return null;
  }

  bool? validateIfItWeight() {
    if (trim().isNotEmpty) {
      if (RegExp(r'^\s*(\d+(\.\d+)?\s*(kg|g)|kg|g)\s*$', caseSensitive: false).hasMatch(this)) {
        return true;
      }
    }
    return null;
  }

  String? validatePhone({String? message}) {
    if (trim().isEmpty) {
      return message ??  Translate.s.fillField;
    } else if (!RegExp(
        r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
        .hasMatch(this) ||
        length < 10) {
      return message ??Translate.s.phoneValidation;
    }
    return null;
  }

  String? validatePhoneOrNull({String? message}) {
    if (trim().isEmpty) {
      return null;
    } else if (!RegExp(
        r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
        .hasMatch(this) ||
        length < 10) {
      return message ?? Translate.s.phoneValidation;
    }
    return null;
  }

  String? validatePasswordConfirm({required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ??  Translate.s.fillField;
    } else if (this != pass) {
      return message ?? Translate.s.confirmValidation;
    }
    return null;
  }

  String? validateOnCode(String dialCode) {
    var phone = PhoneHelper.handlePhone(this);
    bool isValid = CountryUtils.validatePhoneNumber(phone, dialCode);
    if (trim().isEmpty) {
      return Translate.s.fillField;
    } else if (isValid == false) {
      return Translate.s.phoneValidation;
    }
    return null;
  }


  String? validatePrice({required double maxPrice, String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    }

    final value = double.tryParse(trim());
    if (value == null) {
      return message ?? Translate.s.please_enter_a_valid_number;
    }

    if (value > maxPrice) {
      return message ?? "${Translate.s.price_must_not_exceed} $maxPrice";
    }

    return null;
  }


}

String? validateDropDown( dynamic model,{String? message}) {
  if (model == null) {
    return message ??  Translate.s.fillField;
  }
  return null;
}
