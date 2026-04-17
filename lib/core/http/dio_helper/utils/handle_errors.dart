import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/errors/custom_error.dart';
import 'package:flutter_tdd/core/errors/not_found_error.dart';
import 'package:flutter_tdd/core/errors/unauthorized_error.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


@lazySingleton
class HandleErrors {
  // final bool showError;

  HandleErrors();
  void catchError(
      {Response? response,
      required Function(dynamic) errorFunc}) {
    if (response == null) {
      log("failed response Check Server");
      showSnackBarError( "Check Server");
      // AppSnackBar.showSimpleToast(msg: "Check Server");
    }
    else {
      log("failed response ${response.statusCode}");
      log("failed response ${response.data}");
      var data = response.data;
      try {
        if (data is String) data = json.decode(response.data);
        String message = "";
        if(response.statusCode!=422){
          message = errorFunc(data).toString();
        }
        switch (response.statusCode) {
          case 503:
          case 404:
          showSnackBarError( message);
            // AppSnackBar.showErrorSnackBar(error: CustomError(msg: message));
            if (message == "Not Authorized") {
              _tokenExpired();
            }
            break;
          case 500:
            showSnackBarError( message);
            // AppSnackBar.showErrorSnackBar(error: CustomError(msg: message));
            break;
          case 502:
            showSnackBarError( "check your request");
            // AppSnackBar.showErrorSnackBar(error: CustomError(msg: "check your request"));
            break;
          case 422:
          case 400:
            if (data["errors"] != null) {
              List<dynamic> errors = data["errors"];
              log("response errors $errors");
              List<String> lst = List<String>.from(data["errors"].map((e) => e["msg"]));
              for (var e in lst) {
                showSnackBarError(e);
              }
            } else {
              showSnackBarError(message);
            }
            break;
          case 401:
          case 301:
          case 302:
            _tokenExpired();
            break;
        }
      } catch (e) {
        showSnackBarError(e.toString());
      }
    }
  }

  MyResult<Response> statusError(
      Response response, Function(dynamic) errorFunc) {
    if (response.statusCode == 401) {
      return MyResult.isError(UnauthorizedError());
    }else if (response.statusCode == 404) {
      return MyResult.isError(NotFoundError());
    }
    return MyResult.isSuccess(response);
  }

  void _tokenExpired() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("user");
    Phoenix.rebirth(getIt<GlobalContext>().context());
  }



  void showSnackBarError(String message){
    if(true){
      AppSnackBar.showErrorSnackBar(error: CustomError(msg: message));
    }
  }


}
