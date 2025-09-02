import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController {
  // void navigateToLogin(BuildContext context) async {
  //   await Future.delayed(const Duration(milliseconds: 2000));
  //   if (context.mounted) {
  //     AutoRouter.of(context).replaceAll([const LoginRegisterRoute()]);
  //   }
  // }

  void manipulateSaveData(BuildContext context) async {
    updateLang(context);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var cachedUserData = preferences.getString("user");
    if (cachedUserData != null) {
      log("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<==========================use data not equal null===============>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
      _setUserData(context, UserModel.fromJson(json.decode(cachedUserData)));
    } else {
      _routeToLogin(context);
    }
  }


  void _routeToLogin(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    context.read<DeviceCubit>().updateUserAuth(false);
    AutoRouter.of(context).push(const LoginRegisterRoute());
  }


  Future<void> updateLang(BuildContext context) async {
    await SharedPreferences.getInstance().then(
          (lang) {
        String? value = lang.getString(ApplicationConstants.langKey);
        context.read<DeviceCubit>().updateLanguage(
          Locale(
            value ?? ApplicationConstants.langEN,
            getCountryLangCode(value ?? ApplicationConstants.langEN),
          ),
        );
        if(value == ApplicationConstants.langAR){
          value = "sa";
        }
        if(value == ApplicationConstants.langBN){
          value = "bd";
        }
        GlobalState.instance.set(ApplicationConstants.langKey, value ?? ApplicationConstants.langEN);

      },
    );
  }


  void _setUserData(BuildContext context, UserModel? data) async {
    context.read<DeviceCubit>().updateUserAuth(true);
    context.read<UserCubit>().onUpdateUserData(data!);
    GlobalState.instance.set(ApplicationConstants.keyToken, data.token);
    await Future.delayed(const Duration(seconds: 4));
    AutoRouter.of(context).push( const HomePageRoute());
  }


  // String getLangCode(String code){
  //  if(code == "sa"){
  //    return ApplicationConstants.langAR;
  //  }else if(code == "bd"){
  //    return ApplicationConstants.langBN;
  //  }else{
  //    return code;
  //  }
  // }

  String getCountryLangCode(String code){
    switch(code){
      case ApplicationConstants.langAR: return "SA";
      case ApplicationConstants.langEN: return "US";
      case ApplicationConstants.langBN:return "BD" ;
      default: return "US";
    }
  }




}
