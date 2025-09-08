import 'package:flutter_tdd/core/localization/translate.dart';

enum ReportReasonEnum {

  noUserResponse,
  problemInMotor,
  other;

  String get getTitle {
    switch (this) {
      case noUserResponse:
        return Translate.s.user_didnt_respond;
      case problemInMotor:
        return Translate.s.malfunction_in_motor;
      case other:
        return Translate.s.other;
    }
  }

}