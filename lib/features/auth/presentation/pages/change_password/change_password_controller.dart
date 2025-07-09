

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

}