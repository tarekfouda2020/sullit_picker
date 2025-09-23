enum NotificationType {

  normal,
  newOrder, /// new order arrive
  reportRejected, /// admin reject report
  reportAccepted, /// admin accept report
  orderCanceled; /// order canceled by store or employee


  /// keys returned from fcm message
  String notifyKey(){
    switch(this){
      case NotificationType.normal: return ""; /// not returned just to handle normal notification that is not related with orders
      case NotificationType.newOrder: return "order";
      case NotificationType.orderCanceled: return "driver_store_order_canceled" ;
      case NotificationType.reportRejected: return "driver_store_order_report_rejected" ;
      case NotificationType.reportAccepted: return "driver_store_order_report_accepted" ;
    }
  }

  static NotificationType notifyType(String key){
    switch(key){
      case "order": return NotificationType.newOrder;
      case "driver_store_order_canceled": return NotificationType.orderCanceled ;
      case "driver_store_order_report_rejected": return  NotificationType.reportRejected;
      case "driver_store_order_report_accepted": return NotificationType.reportAccepted ;
      default: return NotificationType.normal;
    }
  }


  bool get isNewOrder => this == NotificationType.newOrder;
  bool get isOrderCanceled => this == NotificationType.orderCanceled;

  bool get isReportRejected => this == NotificationType.reportRejected;
  bool get isReportAccepted => this == NotificationType.reportAccepted;

  /// in freelance reported case...only admin can reject & accept report



}