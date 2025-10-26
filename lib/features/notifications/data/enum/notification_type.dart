enum NotificationType {

  normal,
  newOrder, /// new order arrive
  orderAccepted, /// picker accept report
  orderCanceled; /// picker cancel order


  /// keys returned from fcm message
  String notifyKey(){
    switch(this){
      case NotificationType.normal: return ""; /// not returned just to handle normal notification that is not related with orders
      case NotificationType.newOrder: return "picker_new_order";
      case NotificationType.orderCanceled: return "picker_order_canceled" ;
      case NotificationType.orderAccepted: return "picker_new_order_accepted" ;
    }
  }

  static NotificationType notifyType(String key){
    switch(key){
      case "picker_new_order": return NotificationType.newOrder;
      case "picker_order_canceled": return NotificationType.orderCanceled ;
      case "picker_new_order_accepted": return NotificationType.orderAccepted ;
      default: return NotificationType.normal;
    }
  }


  bool get isNewOrder => this == NotificationType.newOrder;

  bool get isOrderCanceled => this == NotificationType.orderCanceled;

  bool get isOrderAccepted => this == NotificationType.orderAccepted;



}