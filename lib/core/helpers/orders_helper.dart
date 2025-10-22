
import 'dart:async';
import 'dart:convert';

import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/res.dart';
import 'package:injectable/injectable.dart';
import 'package:sound_effect/sound_effect.dart';

@lazySingleton
class OrdersHelper {
   final SoundEffect _player = SoundEffect();
   Timer? _timer;

   final BaseBloc<List<OrderModel>> assignedOrdersCubit = BaseBloc<List<OrderModel>>([]);



   Future<void> saveAssignedOrders(List<OrderModel> data) async {
     final jsonString = jsonEncode(data.map((e) => e.toJson()).toList());
     await HiveHelper.instance.addDataToBox<String>(
       HiveBoxesNames.orders,
       key: HiveBoxesKeys.assignedOrdersKey,
       jsonString,
     );
   }

   Future<List<OrderModel>> getAssignedOrders() async {
     final jsonString = HiveHelper.instance.getDataFromBox<String>(
       HiveBoxesNames.orders,
       key: HiveBoxesKeys.assignedOrdersKey,
     );

     if (jsonString == null || jsonString.isEmpty) {
       return [];
     }

     final List<dynamic> decodedList = jsonDecode(jsonString);
     return decodedList.map((e) => OrderModel.fromJson(e)).toList();
   }

   Future<void> saveOrderDetails(OrderModel data) async {
     final jsonString = jsonEncode(data.toJson());
     await HiveHelper.instance.addDataToBox<String>(HiveBoxesNames.orderDetails, jsonString,key: data.id);
   }

   Future<OrderModel?> getOrderDetails(int orderId) async {
     final box = HiveHelper.instance.getDataFromBox<String>(HiveBoxesNames.orderDetails,key: orderId);
     final map = jsonDecode(box ?? "") as Map<String, dynamic>;
     return OrderModel.fromJson(map);
   }

   Future<void> _startSound({Duration interval = const Duration(seconds: 2)}) async {
    if (_timer != null) return;
    await _player.initialize();
    await _player.load("effect", Res.newOrderSound);
    _timer = Timer.periodic(interval, (_) {
      _player.play('effect', volume: 0.5);
    });
    _player.play('effect', volume: 0.5);
  }

   Future<void> _stopSound() async{
    await _player.release();
    _timer?.cancel();
    _timer = null;
  }




}
