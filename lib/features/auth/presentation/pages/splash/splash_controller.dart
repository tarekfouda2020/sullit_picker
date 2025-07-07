import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:geolocator/geolocator.dart';

class SplashController {
  void navigateToLogin(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 2500));
    if (context.mounted) {
      AutoRouter.of(context).replaceAll([const LoginRegisterRoute()]);
    }
  }
}
