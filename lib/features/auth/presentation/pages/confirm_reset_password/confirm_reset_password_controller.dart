import 'package:flutter_tdd/core/errors/base_error.dart';

import 'confirm_reset_password_imports.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/auth/domain/entity/confirm_reset_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';

class ConfirmResetPasswordController {

  late String email;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


  final ObsValue<bool> passwordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> confirmPasswordVisibleObs = ObsValue<bool>.withInit(false);

  ConfirmResetPasswordController(String userEmail){
    email = userEmail;
  }

  void onPressSend(BuildContext context) async {
    if(formKey.currentState!.validate()){
      final result = await getIt<AuthRepositories>().confirmResetPassword(_params);
      result.when(
        isSuccess: (msg) {
          AppSnackBar.showSimpleToast(msg:msg ?? "Your password is reset.Please login",type: ToastType.success);
          AutoRouter.of(context).pushAndPopUntil(
            const LoginRegisterRoute(),
            predicate: (route) => false
          );
        },
        isError: (error) {
          AppSnackBar.showErrorSnackBar( error: BaseError.unknown(msg: error.message));
        },
      );
    }
  }

  void switchPasswordVisibility(ObsValue<bool> obs) {
    obs.setValue(!obs.getValue());
  }


  ConfirmResetPasswordParams get _params => ConfirmResetPasswordParams(
    email: email,
    code: codeController.text,
    password: passwordController.text,
    confirmPassword: confirmPasswordController.text,
  );


}