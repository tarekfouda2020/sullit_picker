

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
       AppSnackBar.showSimpleToast(msg: Translate.of(context).current_and_new_password_same);
     }else{
     AppSnackBar.showSuccessSnackBar(Translate.of(context).password_changed_successfully);
     AutoRouter.of(context).maybePop();
     }
   }
  }

  Future<void> callChangePassword(
      BuildContext context) async {
    ChangePasswordParams params = _changePasswordParams();
    await getIt.get<AuthRepositories>().sendChangePassword(params).then((result) {
      result.when(
        isSuccess: (data) {
          AppSnackBar.showSimpleToast(msg: Translate.of(context).password_reset_successfully,type: ToastType.success);
          AutoRouter.of(context).maybePop();

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