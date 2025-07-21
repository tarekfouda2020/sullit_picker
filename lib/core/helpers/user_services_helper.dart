// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/router_imports.gr.dart';

@injectable
class UserServicesHelper {
  void cashAndRoute(BuildContext context, UserModel? data, String msg, bool register) async {
    context.read<DeviceCubit>().updateUserAuth(register ? false: true);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("user", json.encode(data?.toJson()));
    preferences.setString("token", data!.token!);
    GlobalState.instance.set('token', data.token);
    context.read<UserCubit>().onUpdateUserData(data);
    AppSnackBar.showSimpleToast(msg: msg, type: ToastType.success);
    AutoRouter.of(context).replaceAll([const HomePageRoute()]);
  }
  void clearCashAndRoute(BuildContext context)async {
    context.read<DeviceCubit>().updateUserAuth(false);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
    GlobalState.instance.set('token',null);
    context.read<UserCubit>().onUpdateUserData(null);
    AutoRouter.of(context).pushAndPopUntil( const Splash(), predicate: (route) => false);
}
}