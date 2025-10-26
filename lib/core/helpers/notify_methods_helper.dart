import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/notifications/data/enum/notification_type.dart';
import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import '../../features/auth/data/models/user_model/user_model.dart';
import '../../features/home/domain/repositories/home_repositories.dart';
import 'orders_helper.dart';
import 'user_services_helper.dart';
import 'package:flutter/material.dart';

@lazySingleton
class NotifyMethodsHelper {

  bool notInOrderDetails() {
    try {
      final router = getIt<AppRouter>();
      final topRoute = router.current;
      if (topRoute.name != OrderDetailsRouteName.name) {
        return true;
      }
    } catch (e) {
     return false;
    }
    return true;
  }

  bool notInHomePage() {
    try {
      final router = getIt<AppRouter>();
      final topRoute = router.current;
      if (topRoute.name != HomePageRoute.name) {
        return true;
      }
    } catch (e) {
      return false;
    }
    return true;
  }


  void showNewOrderNotify(){
    if(notInOrderDetails()){
      getIt<OrdersHelper>().showNewOrderAlert();
    }
  }




}
