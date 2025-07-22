import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController {
  void navigateToLogin(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    if (context.mounted) {
      AutoRouter.of(context).replaceAll([const LoginRegisterRoute()]);
    }
  }

  void manipulateSaveData(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var cachedUserData = preferences.getString("user");
    if (cachedUserData != null) {
      _setUserData(context, UserModel.fromJson(json.decode(cachedUserData)));
    } else {
      _handleCachedData(context);
    }
  }


  void _handleCachedData(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    context.read<DeviceCubit>().updateUserAuth(false);
    AutoRouter.of(context).push(const LoginRegisterRoute());
  }


  void updateLang(BuildContext context, String lang){
    context.read<DeviceCubit>().updateLanguage(Locale(lang));
  }


  void _setUserData(BuildContext context, UserModel? data) async {
    context.read<DeviceCubit>().updateUserAuth(true);
    context.read<UserCubit>().onUpdateUserData(data!);
    GlobalState.instance.set('token', data.token);
    await Future.delayed(const Duration(seconds: 4));
    AutoRouter.of(context).push( const HomePageRoute());
  }


}
