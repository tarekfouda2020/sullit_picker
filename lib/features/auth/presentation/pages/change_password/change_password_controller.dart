

import 'dart:developer';

import 'package:flutter_tdd/features/auth/domain/entity/change_password_params.dart';

import '../../../../../core/helpers/di.dart';
import '../../../domain/repositories/auth_repositories.dart';
import 'change_password_imports.dart';

class ChangePasswordController {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  final ObsValue<bool> oldPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> newPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> confirmPasswordVisibleObs = ObsValue<bool>.withInit(false);


  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


  void switchPasswordVisibility(ObsValue<bool> obs) {
    obs.setValue(!obs.getValue());
  }


  void saveNewPassword(BuildContext context){
   if(formKey.currentState!.validate()){
     if(oldPasswordController.text == newPasswordController.text){
       AppSnackBar.showSimpleToast(msg:  "Current password and New password are same");
     }else{
     AppSnackBar.showSuccessSnackBar("Password changed successfully");
     AutoRouter.of(context).maybePop();
     }
   }
  }

  Future<void> callChangePassword(
      BuildContext context) async {
    ChangePasswordParams params = _changePasswordParams();
    log(">>>>>>>>>>>>>>>>>>>>>>>>${params.toJson()}");
    await getIt.get<AuthRepositories>().sendChangePassword(params).then((result) {
      result.when(
        isSuccess: (data) {
          AppSnackBar.showSimpleToast(msg: 'the password is reset successfully',type: ToastType.success);
          AutoRouter.of(context).pop();

        },
        isError: (error) {
          AppSnackBar.showSimpleToast(msg: error.message);
        },
      );
    });
  }

  ChangePasswordParams _changePasswordParams() {
    return ChangePasswordParams(
      currentPassword: oldPasswordController.text,
      password: newPasswordController.text,
      passwordConfirmation: confirmPasswordController.text,
    );
  }

}