import 'package:flutter_tdd/core/localization/translate.dart';

enum ReportReasonEnum {

 noUserResponse,
  problemInMotor,
  other;



 String get getTitle => switch(this){
   noUserResponse => Translate.s.user_didnt_respond,
   problemInMotor => Translate.s.malfunction_in_motor,
   other => Translate.s.other,
 };
}