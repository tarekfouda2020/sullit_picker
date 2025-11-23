
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/device_id_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/orders_helper.dart';
import 'package:flutter_tdd/core/http/dio_helper/utils/cache_manager.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/router_imports.gr.dart';

@lazySingleton
class UserServicesHelper {
  Future<void> cashAndRoute(BuildContext context, UserModel? data, String msg,) async {
    context.read<DeviceCubit>().updateUserAuth( true);
    
    // Reset OrdersHelper for new login to ensure clean state
    await getIt<OrdersHelper>().reset();
    
    var userData = json.encode(data?.toJson());
    GlobalState.instance.set(ApplicationConstants.keyToken, data?.token);
    context.read<UserCubit>().onUpdateUserData(data);
    AppSnackBar.showSimpleToast(msg: msg, type: ToastType.success);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString("user",userData );
    AutoRouter.of(context).push(const HomePageRoute());
  }

  Future<void> clearCashAndRoute(BuildContext context)async {
    context.read<DeviceCubit>().updateUserAuth(false);
    GlobalState.instance.set(ApplicationConstants.keyToken,null);


    // Clean up OrdersHelper before clearing Hive to prevent timer-related crashes
    await getIt<OrdersHelper>().cleanup();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove("user");
    await preferences.remove(ApplicationConstants.keyToken);
    await getIt<DeviceIdHelper>().clearDeviceToken();
    await CacheManager().clearCache();
    
    // Close and clear Hive boxes
    await HiveHelper.instance.closeAllBoxes();
    HiveHelper.instance.deleteDataFromBox<String>(HiveBoxesNames.orders,key: HiveBoxesKeys.assignedOrdersKey,);
    await HiveHelper.instance.deleteBox<String>(HiveBoxesNames.orderDetails);
    await HiveHelper.instance.clearHive();
    
    // Reinitialize Hive for the next login
    await HiveHelper.instance.init();
    await HiveHelper.instance.openBox<String>(HiveBoxesNames.orderDetails);
    await HiveHelper.instance.openBox<String>(HiveBoxesNames.orders);
    
    context.read<UserCubit>().onUpdateUserData(null);
    AutoRouter.of(context).push(const SplashRoute());
  }


Future<void> updateUserData(BuildContext context, UserModel? data,{bool isAuth = true}) async {
  context.read<DeviceCubit>().updateUserAuth(isAuth);
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("user", json.encode(data?.toJson()));
  preferences.setString(ApplicationConstants.keyToken, data!.token);
  GlobalState.instance.set(ApplicationConstants.keyToken, data.token);
  context.read<UserCubit>().onUpdateUserData(data);
}


  Future<void> getUserData()async{
    BuildContext context = getIt<GlobalContext>().context();
    var result = await getIt<HomeRepositories>().getProfile();
    result.when(
      isSuccess: (data) async{
        await updateUserData(context, data);
      },
      isError: (error) {},
    );
  }


}