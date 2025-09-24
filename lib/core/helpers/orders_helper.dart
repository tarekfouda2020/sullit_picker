
import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/new_order_alert_dialog_widget.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/orders_repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/res.dart';
import 'package:injectable/injectable.dart';
import 'package:sound_effect/sound_effect.dart';

@lazySingleton
class OrdersHelper {
   final SoundEffect _player = SoundEffect();
   Timer? _timer;

  final BaseBloc<OrderModel?> currentOrderCubit = BaseBloc<OrderModel?>();

  Future<void> getCurrentOrder({void Function()? afterSuccess, bool fromRemote = true,bool setLoading = true}) async {
    // if(setLoading){
    if(currentOrderCubit.hasNoData){
      currentOrderCubit.loadingState();
    }
    var result = await getIt<OrdersRepositories>().getCurrentOrder(fromRemote);
    result.when(
      isSuccess: (data) {
        currentOrderCubit.successState(data);
        if (afterSuccess != null) {
          afterSuccess.call();
        }
      },
      isError: (error) {
        currentOrderCubit.failedState(
          error,
          () => getCurrentOrder(),
        );
      },
    );
  }


  Future<void> showNewOrderAlert() async {
    BuildContext context = getIt<GlobalContext>().context();
    bool isAvailable = context.read<UserCubit>().state.model!.isAvailable;
    if (isAvailable && currentOrderCubit.hasNoData) {
      _startSound();
     await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => NewOrderAlertWidget(
          onPressApply: () => onPressApply(context),
        ),
      );
     _stopSound();
    }
  }

  void onPressApply(BuildContext context){
    _stopSound();
    var user = context.read<UserCubit>().state.model;
    if(user?.isFreelancer ?? false){
      AutoRouter.of(context).push(const NewOrdersPageRoute());
    }else{
      getCurrentOrder();
    }
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
