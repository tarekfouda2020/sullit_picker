import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

class ShowOrdersRequester extends Requester<OrderModel>{
  final int id;

  ShowOrdersRequester({required this.id});

  @override
  Future<void> request({bool fromRemote = true}) async{
    if(hasNoData){
      loadingState();
    }
    var result = await getIt<HomeRepositories>().showOrders(_orderParams(fromRemote));
    result.when(
      isSuccess: (data) {
        successState(data!);
      },
      isError: (error) {
        request(fromRemote: fromRemote);
      },);
  }


  void setLoadingState(){
    loadingState();
  }


  OrdersParams _orderParams(bool refresh){
    return OrdersParams(id: id, refresh: refresh);
  }

}