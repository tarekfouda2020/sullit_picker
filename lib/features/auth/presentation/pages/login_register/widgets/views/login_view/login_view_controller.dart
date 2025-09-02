// ignore_for_file: use_build_context_synchronously

import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/device_id_helper.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import '../../../../../../../../core/helpers/di.dart';

import 'login_view_imports.dart';

class LoginViewController {
  // Login form controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final ObsValue<bool> loginPasswordVisibleObs = ObsValue<bool>.withInit(false);

  final GlobalKey<CustomButtonState> loadingButtonKey = GlobalKey<CustomButtonState>();

  void navigateToForgetPassword(BuildContext context) {
    AutoRouter.of(context).push(const ForgetPasswordPageRoute());
  }

  void switchPasswordVisibility() {
    loginPasswordVisibleObs.setValue(!loginPasswordVisibleObs.getValue());
  }


  Future<void> callLogin(BuildContext context) async {
    if(loginFormKey.currentState!.validate()){
      loadingButtonKey.currentState?.animateForward();
      final deviceId = await getIt<DeviceIdHelper>().getDeviceId();
      LoginParams params = _userParams(deviceId!);
      await getIt.get<AuthRepositories>().sendLogin(params).then((result) {
        result.when(
          isSuccess: (data) {
            getIt<UserServicesHelper>().cashAndRoute(context, data, 'Success Login', false);
          },
          isError: (error) {

          },
        );
        loadingButtonKey.currentState?.animateReverse();
      });
    }
  }

  LoginParams _userParams(String deviceId) {
    return LoginParams(
      email: loginEmailController.text,
      password: loginPasswordController.text,
      deviceToken: deviceId,
    );
  }



}