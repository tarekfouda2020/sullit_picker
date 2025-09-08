
import 'orders_history_imports.dart';
import 'widgets/views/complete_orders/complete_orders.dart';
import 'widgets/views/faild_orders/failed_orders.dart';

class OrdersHistoryController {

  final ObsValue<int> currentTabObs = ObsValue<int>.withInit(0);


  void switchTab(int index) {
    currentTabObs.setValue(index);
  }


  Widget currentView(){
    switch(currentTabObs.getValue()){
      case 0: return const CompletedOrdersListWidget();
      case 1: return const FailedOrdersListWidget();
      default: return const CompletedOrdersListWidget();
    }
  }
}