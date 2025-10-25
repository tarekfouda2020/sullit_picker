// ignore_for_file: use_build_context_synchronously

import 'package:flutter_tdd/core/helpers/device_id_helper.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import '../../../../../../../../core/helpers/di.dart';

import 'login_view_imports.dart';

class LoginViewController {
  // Login form controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final ObsValue<bool> passwordVisibleObs = ObsValue<bool>.withInit(false);

  void navigateToForgetPassword(BuildContext context) {
    AutoRouter.of(context).push(const ForgetPasswordPageRoute());
  }

  void switchPasswordVisibility() {
    passwordVisibleObs.setValue(!passwordVisibleObs.getValue());
  }

  Future<void> callLogin(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      final deviceId = await getIt<DeviceIdHelper>().getDeviceId();
      LoginParams params = _userParams(deviceId!);
      await getIt.get<AuthRepositories>().sendLogin(params).then((result) {
        result.when(
          isSuccess: (data) {
            getIt<UserServicesHelper>().cashAndRoute(context, data, 'Success Login');
          },
          isError: (error) {},
        );
      });
    }
  }

  LoginParams _userParams(String deviceId) {
    return LoginParams(
      userName: usernameController.text,
      password: passwordController.text,
      deviceToken: deviceId,
      // userName: usernameController.text,
    );
  }
}
