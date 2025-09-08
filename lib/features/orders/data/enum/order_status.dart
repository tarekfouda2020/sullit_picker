enum OrderStatus {

  pending,
  assigned,
  inDelivery,
  delivered,
  arrived,
  driverReported;


  String get getStatusKey {
    switch(this){
      case OrderStatus.pending:
        return "";
      case OrderStatus.assigned:
        return "assigned";
      case OrderStatus.inDelivery:
        return "in_delivery";
      case OrderStatus.arrived:
        return "arrived";
      case OrderStatus.delivered:
        return "delivered";
      case OrderStatus.driverReported:
        return "driver_reported";
    }
  }

}