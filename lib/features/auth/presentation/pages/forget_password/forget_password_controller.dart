import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';

import '../../../../../core/routes/router_imports.gr.dart';

class ForgetPasswordController {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<CustomButtonState> loadingButtonKey = GlobalKey<CustomButtonState>();





  Future<void> resetCode(BuildContext context)async{
    if(formKey.currentState!.validate()){
      var params = _verifyEmailParams();
      var result = await getIt<AuthRepositories>().forgotPassword(params);
      result.when(
          isSuccess: (data) {
           AppSnackBar.showSuccessSnackBar("Password reset code sent to your email");
           AutoRouter.of(context).push(ConfirmResetPasswordPageRoute(email: emailController.text));
          },
          isError: (error) {
            AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: error.message));
          },
      );
    }
  }

  VerifyParams _verifyEmailParams() => VerifyParams(email: emailController.text);




}