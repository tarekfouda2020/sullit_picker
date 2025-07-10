
import 'orders_history_imports.dart';
import 'widgets/completed_orders_list_widget.dart';
import 'widgets/failed_orders_list_widget.dart';

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