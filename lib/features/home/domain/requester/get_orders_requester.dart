import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

class GetOrdersRequester extends Requester<OrdersModel?>{

  @override
  Future<void> request({bool fromRemote = true}) async{
    if(hasNoData){
      loadingState();
    }
    var result = await getIt<HomeRepositories>().orders(fromRemote);
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