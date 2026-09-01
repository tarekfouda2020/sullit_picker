import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/notify_methods_helper.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/get_orders_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/new_order_alert_dialog_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:sound_effect/sound_effect.dart';

import '../../features/auth/presentation/pages/change_password/change_password_imports.dart';

@lazySingleton
class OrdersHelper {
  final SoundEffect _player = SoundEffect();
  Timer? _timer;
  bool _isDisposed = false;

  final BaseBloc<List<OrderModel>> assignedOrdersCubit =
      BaseBloc<List<OrderModel>>([]);
  final BaseBloc<OrdersList?> ordersListCubit = BaseBloc<OrdersList?>();

  /// used only in home page
  /// used in tow places i UI but only one of them will apply
  /// so the key will be in one place >>> avoiding to Error *Multiple widgets used the same GlobalKey.*
  GlobalKey<RefreshIndicatorState> ordersRefreshKey() =>
      GlobalKey<RefreshIndicatorState>();

  Future<void> saveAssignedOrders(List<OrderModel> data) async {
    // Prevent saving to Hive if helper is disposed (during logout)
    if (_isDisposed) return;

    final String jsonString =
        jsonEncode(data.map((e) => e.toFlatJson()).toList());
    await HiveHelper.instance.addDataToBox<String,String>(
      HiveBoxesNames.orders,
      key: HiveBoxesKeys.assignedOrdersKey,
      jsonString,
    );
    assignedOrdersCubit.successState(data);
  }

  List<OrderModel> getAssignedOrders() {
    // Prevent accessing Hive if helper is disposed (during logout)
    if (_isDisposed) return [];

    final String? jsonString = HiveHelper.instance.getDataFromBox<String,String>(
      HiveBoxesNames.orders,
      key: HiveBoxesKeys.assignedOrdersKey,
    );

    if (jsonString == null || jsonString.isEmpty) {
      return [];
    }

    final List<dynamic> decodedList = jsonDecode(jsonString);
    try {
      return decodedList.map((e) => OrderModel.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> saveOrderDetails(OrderModel data) async {
    if (_isDisposed) return;

    final String jsonString = jsonEncode(data.toFlatJson());
    await HiveHelper.instance.addDataToBox<String,int>(
        HiveBoxesNames.orderDetails, jsonString,
        key: data.id
    );
  }

  Future<OrderModel?> getOrderDetails(int orderId) async {
    final String? box = HiveHelper.instance
        .getDataFromBox<String,int>(HiveBoxesNames.orderDetails, key: orderId);
    if (box == null || box.isEmpty) {
      return null;
    }
    try {
      final Map<String, dynamic> map = jsonDecode(box) as Map<String, dynamic>;
      return OrderModel.fromJson(map);
    } catch (e) {
      log("====>>>>>>>>>>>>error while decode data $e  <<<<<<<<<");
      return null;
    }
  }

  Future<void> deleteOrderDetails(int orderId) async {
    HiveHelper.instance
        .deleteDataFromBox<String,int>(HiveBoxesNames.orderDetails, key: orderId);
  }

  Future<void> savePrescriptionOrderState({
    required int orderId,
    required PharmacyOrderModel order,
    required List<OrderDetailsModel> details,
    required String? insuranceDiscount,
    required String? bagsCount,
  }) async {
    if (_isDisposed) return;
    final json = jsonEncode({
      'order': order.toFlatJson(),
      'details': details.map((e) => e.toJson()).toList(),
      'insurance_discount': insuranceDiscount,
      'bags_count': bagsCount,
    });
    await HiveHelper.instance.addDataToBox<String, int>(
      HiveBoxesNames.prescriptionOrderDetails,
      json,
      key: orderId,
    );
  }

  Map<String, dynamic>? getPrescriptionOrderState(int orderId) {
    if (_isDisposed) return null;
    final String? json = HiveHelper.instance
        .getDataFromBox<String, int>(HiveBoxesNames.prescriptionOrderDetails, key: orderId);
    if (json == null || json.isEmpty) return null;
    try {
      return jsonDecode(json) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  Future<void> deletePrescriptionOrderState(int orderId) async {
    HiveHelper.instance
        .deleteDataFromBox<String, int>(HiveBoxesNames.prescriptionOrderDetails, key: orderId);
  }

  Future<void> getAllOrders(
      {bool fromRemote = true, bool setLoading = true}) async {
    if (ordersListCubit.hasNoData && setLoading) {
      ordersListCubit.loadingState();
    }
    var result = await getIt<HomeRepositories>().orders(
      GetOrdersParams(fromRemote: fromRemote),
    );
    result.when(
      isSuccess: (data) {
        ordersListCubit.successState(data);
        if (ordersListCubit.data != null) {
          updateAssignedFromLocalData(data?.assignedOrders ?? <OrderModel>[]);
          if (ordersListCubit.data!.assignedOrders.isEmpty &&
              ordersListCubit.data!.newOrders.isEmpty) {
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
    // Prevent accessing Hive if helper is disposed (during logout)
    if (_isDisposed) {
      assignedOrdersCubit.successState(data);
      return;
    }

    var localData = getIt<OrdersHelper>().getAssignedOrders();
    if (localData.isEmpty) {
      getIt<OrdersHelper>().saveAssignedOrders(data);
      assignedOrdersCubit.successState(data);
    } else {
      initDataFromLocal();
    }
  }

  Future<void> initDataFromLocal() async {
    // Prevent accessing Hive if helper is disposed (during logout)
    if (_isDisposed) {
      assignedOrdersCubit.successState([]);
      return;
    }

    var data = getIt<OrdersHelper>().getAssignedOrders();
    assignedOrdersCubit.successState(data);
  }

  Future<void> showNewOrderAlert() async {
    BuildContext context = getIt<GlobalContext>().context();
    bool isAvailable = context.read<UserCubit>().state.model!.isAvailable;
    if (isAvailable == false) {
      return;
    }
    startSound();
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => NewOrderAlertWidget(
        onPressApply: () => onPressApply(context),
      ),
    );
    stopSound();
  }

  Future<void> onPressApply(BuildContext context) async {
    stopSound();
    bool? orderDetailsOpened =
        getIt<NotifyMethodsHelper>().orderDetailsOpened();
    if (orderDetailsOpened == true) {
      getAllOrders();
      return;
    }
    bool? notInHomePage = getIt<NotifyMethodsHelper>().notInHomePage();
    if (notInHomePage == true) {
      AutoRouter.of(context).push(const HomePageRoute());
    } else {
      getAllOrders(setLoading: true);
    }
  }

  bool _soundPlay = false;

  Future<void> startSound(
      {Duration interval = const Duration(seconds: 2)}) async {
    if (_timer != null) return;
    await _player.initialize();
    await _player.load("effect", Res.newOrderSound);
    _soundPlay = true;
    _timer = Timer.periodic(interval, (_) {
      _player.play('effect', volume: 2);
    });
    _player.play('effect', volume: 2);
  }


  Future<void> stopSound() async {
    try {
      if (_soundPlay) {
        await _player.release();
        _timer?.cancel();
        _timer = null;
      }
      _soundPlay = false;
    } catch (e) {
      log("error while init sound ");
    }
  }

  /// Clean up all resources before logout
  Future<void> cleanup() async {
    _isDisposed = true;
    assignedOrdersCubit.successState([]);
    ordersListCubit.successState(null);
  }

  /// Reset the helper after logging in with a new account
  Future<void> reset() async {
    _isDisposed = false;
    assignedOrdersCubit.successState([]);
    ordersListCubit.successState(null);

    // Ensure Hive boxes are open
    try {
      if (!Hive.isBoxOpen(HiveBoxesNames.orders)) {
        await HiveHelper.instance.openBox<String>(HiveBoxesNames.orders);
      }
      if (!Hive.isBoxOpen(HiveBoxesNames.orderDetails)) {
        await HiveHelper.instance.openBox<String>(HiveBoxesNames.orderDetails);
      }
      if (!Hive.isBoxOpen(HiveBoxesNames.prescriptionOrderDetails)) {
        await HiveHelper.instance.openBox<String>(HiveBoxesNames.prescriptionOrderDetails);
      }
    } catch (e) {
      log('⚠️ Failed to open Hive boxes during reset: $e');
    }
  }
}
