import 'package:flutter_tdd/features/orders/data/enum/order_status.dart';

class UpdateOrderParams {
  final int id;
  final OrderStatus status;
  final String? reasonText;
  final String? reasonKey;
  UpdateOrderParams({required this.id,required this.status,this.reasonText,this.reasonKey});


  Map<String,dynamic> toJson() => {
    "status": status.getStatusKey,
    if(reasonText!=null) "reason_text": reasonText,
    if(reasonKey!=null) "reason": reasonKey,
  };


}