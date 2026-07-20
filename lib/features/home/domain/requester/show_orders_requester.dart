import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

class ShowOrderRequester extends Requester<OrderModel>{
  final int id;
  ShowOrderRequester({required this.id});
  @override
  Future<void> request({bool fromRemote = true}) async{
    if(hasNoData){
      loadingState();
    }
    var result = await getIt<HomeRepositories>().showOrders(_orderParams(fromRemote));
    result.when(
      isSuccess: (data) async{
        handleAllProducts(data!);
      },
      isError: (error) {
        request(fromRemote: fromRemote);
      },);
  }

  OrdersParams _orderParams(bool refresh){
    return OrdersParams(id: id, refresh: refresh);
  }

  void handleAllProducts(OrderModel data){
    final Map<int, OrderDetailsModel> currentMap = {
      for (final item in data.ordersDetails ?? <OrderDetailsModel>[])
        item.product!.id: item
    };

    final Map<int, ModifiedProductModel> historyMap = {
      for (final history in data.modifiedProducts ?? <ModifiedProductModel>[])
        history.oldProduct?.id ?? history.newProduct!.id: history
    };

    final Set<int> allProductIds = {
      ...currentMap.keys,
      ...historyMap.keys,
    };

    final List<OrderDisplayItem> items = allProductIds.map((id) {
      return OrderDisplayItem(
        current: currentMap[id],
        history: historyMap[id],
      );
    }).toList();
    data.displayItems = [
      ...items
    ];

    successState(data);
  }


}