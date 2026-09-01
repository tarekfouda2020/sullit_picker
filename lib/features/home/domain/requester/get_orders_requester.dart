import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/get_orders_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

class GetOrdersRequester extends Requester<OrdersList?>{

  @override
  Future<void> request({bool fromRemote = true}) async{
    if(hasNoData){
      loadingState();
    }
    var result = await getIt<HomeRepositories>().orders(
      GetOrdersParams(fromRemote: fromRemote),
    );
    result.when(
      isSuccess: (data) {
        successState(data);
      },
      isError: (error) {

      },);
  }


  void setLoadingState(){
    loadingState();
  }


}