
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
// import 'package:flutter_tdd/features/home/domain/models/local_data_model/local_data_model.dart';
import 'package:flutter_tdd/features/home/domain/models/local_orders/local_orders.dart';
import 'package:flutter_tdd/features/home/domain/models/local_product/local_product.dart';

class LocalDataController {


  BaseBloc<LocalOrders> localDataCubit = BaseBloc<LocalOrders>();

  LocalDataController(){
    initData();
  }



  void initData(){
    var hiveData = HiveHelper.instance.getBox<LocalOrders>(HiveBoxesNames.orders).values.toList();
    if(hiveData.isNotEmpty){
      localDataCubit.successState(hiveData.first);
    }else{
      localDataCubit.successState(localData);
    }
  }


  LocalOrders get localData => LocalOrders(
    assigned: [
      // LocalProduct(qty: 3,  progress: 0),
      // LocalProduct(qty: 4,  progress: 0),
      // LocalProduct(qty: 5,  progress: 0),
    ],
    newOrders: [
      // LocalProduct(qty: 3,  progress: 0),
      // LocalProduct(qty: 4,  progress: 0),
      // LocalProduct(qty: 5,  progress: 0),
    ]
);


  void editQty(LocalProduct model){
    if(false){
      model.qty = model.qty-1;
      localDataCubit.successState(localDataCubit.data);
      // Save the updated data back to Hive
      // HiveHelper.instance.addDataToBox<LocalOrders>(
      //   HiveBoxesNames.orders,
      //   localDataCubit.data!
      // );
    }else{
      model.qty = model.qty+1;
    }
    localDataCubit.successState(localDataCubit.data);
    localDataCubit.data!.save();

  }

}