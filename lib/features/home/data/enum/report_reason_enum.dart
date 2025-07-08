enum ReportReasonEnum {

 noUserResponse,
  problemInMotor,
  other;



 String get getTitle => switch(this){
   noUserResponse => 'User didn’t respond',
   problemInMotor => 'A malfunction in the Motor',
   other => 'Other',
 };
}