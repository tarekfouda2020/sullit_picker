import 'package:flutter_tdd/core/localization/translate.dart';

enum OrderTypeEnum {
  // appDriver,
  // selfDelivery,
  // carrier,
  // homeDelivery,
  delivery,
  pickupPoint;



  String getLabel(){
    if(this == delivery){
      return Translate.s.delivery;
    }else{
      return Translate.s.pick_up;
    }
  }



}