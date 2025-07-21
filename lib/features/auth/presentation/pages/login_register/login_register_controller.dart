import 'package:flutter_tdd/features/auth/domain/requesters/work_types_requester.dart';

import '../login_register/login_register_imports.dart';
import 'widgets/views/login_view/login_view.dart';
import 'widgets/views/regeister/register.dart';


class LoginRegisterController {
  // Tab management
  final ObsValue<int> currentTabObs = ObsValue<int>.withInit(0);

  final WorkTypesRequester workTypesRequester = WorkTypesRequester();

  LoginRegisterController() {
    workTypesRequester.request(fromRemote: false);
    workTypesRequester.request();
  }


  void switchTab(int index) {
    currentTabObs.setValue(index);
  }


  void navigateToForgetPassword(BuildContext context) {
    AutoRouter.of(context).push(const ForgetPasswordPageRoute());
  }
  

  void switchPasswordVisibility(ObsValue<bool> obs) {
    obs.setValue(!obs.getValue());
  }



  Widget currentView(){
    switch(currentTabObs.getValue()){
      case 0: return const LoginView();
      case 1: return   RegisterView(loginRegisterController: this);
      default: return const LoginView();
    }
  }
} 