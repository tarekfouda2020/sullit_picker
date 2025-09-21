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
import 'package:injectable/injectable.dart';

@lazySingleton
class OrdersHelper {
  final BaseBloc<OrderModel?> currentOrderCubit = BaseBloc<OrderModel?>();

  Future<void> getCurrentOrder({void Function()? afterSuccess, bool fromRemote = true,bool setLoading = true}) async {
    if(setLoading){
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


  Future<void> showNewOrderAlert(int orderId) async {
    BuildContext context = getIt<GlobalContext>().context();
    bool isAvailable = context.read<UserCubit>().state.model!.isAvailable;
    if (isAvailable && currentOrderCubit.hasNoData) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => NewOrderAlertWidget(
          onPressApply: () => onPressApply(context,orderId),
        ),
      );
    }
  }



  void onPressApply(BuildContext context,int orderId){
    var user = context.read<UserCubit>().state.model;
    if(user?.isFreelancer ?? false){
      AutoRouter.of(context).push(const NewOrdersPageRoute());
    }else{
      getCurrentOrder();
    }
  }


}
