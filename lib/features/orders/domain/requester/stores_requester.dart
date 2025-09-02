
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/orders_repositories.dart';

class StoresRequester extends Requester<List<StoreModel>>{

  @override
  Future<void> request({bool fromRemote = true}) async{
    if(hasNoData){
      loadingState();
    }
    // var result = await getIt<OrdersRepositories>().getStores();
    // result.when(isSuccess: (data) {
    //   successState(data??[]);
    // }, isError: (error) {
    //   failedState(error, () {},);
    // },
    // );
  }

  void refresh(){
    successState(data!);
  }


}