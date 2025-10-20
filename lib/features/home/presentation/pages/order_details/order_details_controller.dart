import 'dart:convert';

import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/domain/requester/show_orders_requester.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_action_widget.dart';

import 'order_details_imports.dart';

class OrderDetailsController {
  final ObsValue<bool> isPicked = ObsValue.withInit(false);
  final BaseBloc<OrderModel> detailsCubit = BaseBloc<OrderModel>();
  late ShowOrdersRequester showOrdersRequester;
  late final int orderId;

  OrderDetailsController(int id){
    orderId = id;
    getDetails();
  }

  void showReplaceDialog(BuildContext context) {
    showDialog(context: context,builder: (context) => DialogActionWidget(
              description: 'Are you sure you want replace this product ?',
              buttonGreenTitle: 'Yes Replace',
              buttonRedTitle: 'Cancel',
              greenOnTap: () => showDialog(
                context: context,
                builder: (context) => DialogActionWidget(
                  description:
                      'User didn’t give access to replace the product , you can just remove it from order',
                  buttonGreenTitle: 'Yes Remove',
                  buttonRedTitle: 'Cancel',
                  greenOnTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  redOnTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ),
              redOnTap: () {
                Navigator.pop(context);
              },
            ));
  }



  void pickItem(OrderDetailsModel orderProduct){


  }


  Future<void> getDetails({bool fromRemote = true})async{
    var hiveData = HiveHelper.instance.getBox<String>(HiveBoxesNames.orderDetails).values.toList();
    if(hiveData.isNotEmpty){
      initDataFromLocal();
      return ;
    }
    detailsCubit.loadingState();
    var params = _orderParams(fromRemote);
    var result = await getIt<HomeRepositories>().showOrders(params);
    result.when(
      isSuccess: (data) {
        updateLocalData(data!);
    },
      isError: (error) {
      detailsCubit.failedState(error, () => getDetails());
    },);
  }


  Future<void> updateLocalData(OrderModel data) async{
    var box = HiveHelper.instance.getDataFromBox<String>(HiveBoxesNames.orderDetails,key: data.id);
    if (box == null || box.isEmpty) {
      HiveHelper.instance.addDataToBox<String>(
        HiveBoxesNames.orderDetails,
        jsonEncode(data.toJson()),
        key: data.id
      );
      detailsCubit.successState(data);
    } else {
      initDataFromLocal();
    }
  }


  Future<void> initDataFromLocal()async{
  var data = await getIt<OrdersHelper>().getOrderDetails();
    detailsCubit.successState(data);
  }


  OrdersParams _orderParams(bool refresh){
    return OrdersParams(id: orderId, refresh: refresh);
  }

}
