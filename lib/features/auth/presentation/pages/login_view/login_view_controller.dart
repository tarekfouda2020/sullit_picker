// ignore_for_file: use_build_context_synchronously

import 'package:flutter_tdd/core/errors/device_id_error.dart';
import 'package:flutter_tdd/core/helpers/device_id_helper.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';

import '../../../../../core/helpers/export.dart';

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
      getIt<LoadingHelper>().showLoadingDialog();
      var deviceId = await getIt<DeviceIdHelper>().getDeviceId();
      if(deviceId==null){
        await Future.delayed(const Duration(milliseconds: 500));
        AppSnackBar.showSimpleToast(msg: DeviceIdError().message,gravity:ToastGravity.BOTTOM,type: ToastType.error);
        getIt<LoadingHelper>().dismissDialog();
        return ;
      }
      LoginParams params = _userParams(deviceId);
      await getIt.get<AuthRepositories>().sendLogin(params).then((result) {
        result.when(
          isSuccess: (data) {
            // getIt<LoadingHelper>().dismissDialog();
            getIt<UserServicesHelper>().cashAndRoute(context, data, Translate.of(context).login_successful);
          },
          isError: (error) {
            // getIt<LoadingHelper>().dismissDialog();
            AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: Translate.s.something_went_wrong));
          },
        );
      });
      getIt<LoadingHelper>().dismissDialog();
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
