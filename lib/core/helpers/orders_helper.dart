
import 'dart:async';
import 'dart:convert';

import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/notify_methods_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/new_order_alert_dialog_widget.dart';
import 'package:injectable/injectable.dart';
import 'package:sound_effect/sound_effect.dart';

import '../../features/auth/presentation/pages/change_password/change_password_imports.dart';

@lazySingleton
class OrdersHelper {
   final SoundEffect _player = SoundEffect();
   Timer? _timer;

   final BaseBloc<List<OrderModel>> assignedOrdersCubit = BaseBloc<List<OrderModel>>([]);
   final BaseBloc<OrdersList?> ordersListCubit = BaseBloc<OrdersList?>();

   /// used only in home page
   /// used in tow places i UI but only one of them will apply
   /// so the key will be in one place >>> avoiding to Error *Multiple widgets used the same GlobalKey.*
    GlobalKey<RefreshIndicatorState>   ordersRefreshKey() => GlobalKey<RefreshIndicatorState>();


   Future<void> saveAssignedOrders(List<OrderModel> data) async {
     final jsonString = jsonEncode(data.map((e) => e.toJson()).toList());
     await HiveHelper.instance.addDataToBox<String>(
       HiveBoxesNames.orders,
       key: HiveBoxesKeys.assignedOrdersKey,
       jsonString,
     );
   }

   List<OrderModel> getAssignedOrders()  {
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

   Future<void> deleteOrderDetails(int orderId) async {
     HiveHelper.instance.deleteDataFromBox<String>(HiveBoxesNames.orderDetails,key: orderId);
   }



   Future<void> getAllOrders({bool fromRemote = true, bool setLoading = true}) async {
     if (ordersListCubit.hasNoData && setLoading) {
       ordersListCubit.loadingState();
     }
     var result = await getIt<HomeRepositories>().orders(fromRemote);
     result.when(
       isSuccess: (data) {
         ordersListCubit.successState(data);
         if (ordersListCubit.data != null) {
           updateAssignedFromLocalData(data?.assignedOrders ?? <OrderModel>[]);
           if (ordersListCubit.data!.assignedOrders.isEmpty && ordersListCubit.data!.newOrders.isEmpty) {
             ordersListCubit.successState(null);
           }
         }
       },
       isError: (error) {
         ordersListCubit.failedState(
           error,
               () => getAllOrders(),
         );
       },
     );
   }


   Future<void> updateAssignedFromLocalData(List<OrderModel> data) async {
     var localData = getIt<OrdersHelper>().getAssignedOrders();
     if (localData.isEmpty) {
       getIt<OrdersHelper>().saveAssignedOrders(data);
       assignedOrdersCubit.successState(data);
     } else {
       initDataFromLocal();
     }
   }

   Future<void> initDataFromLocal() async {
     var data = getIt<OrdersHelper>().getAssignedOrders();
     assignedOrdersCubit.successState(data);
   }


   Future<void> showNewOrderAlert() async {
     BuildContext context = getIt<GlobalContext>().context();
     bool isAvailable = context.read<UserCubit>().state.model!.isAvailable;
     if(isAvailable == false){
       return ;
     }
     _startSound();
     await showDialog(
       context: context,
       barrierDismissible: false,
       builder: (context) => NewOrderAlertWidget(
         onPressApply: () => onPressApply(context),
       ),
     );
     _stopSound();
   }

   Future<void> onPressApply(BuildContext context)async{
     _stopSound();
     var notInHomePage = getIt<NotifyMethodsHelper>().notInHomePage();
     print("=========>>>>>> not in home page${notInHomePage} ------<<<<<<<<<========");
     if(notInHomePage){
       await AutoRouter.of(context).push(const HomePageRoute());
     }else{
       var data = ordersListCubit.data;
       if(data==null || (data.assignedOrders.isEmpty && data.newOrders.isEmpty)){
         getAllOrders(setLoading: true);
       }
     }

   }

   Future<void> _startSound({Duration interval = const Duration(seconds: 2)}) async {
    if (_timer != null) return;
    await _player.initialize();
    await _player.load("effect", Res.newOrderSound);
    _timer = Timer.periodic(interval, (_) {
      _player.play('effect', volume: 2);
    });
    _player.play('effect', volume: 2);
  }

   Future<void> _stopSound() async{
    await _player.release();
    _timer?.cancel();
    _timer = null;
  }




}
