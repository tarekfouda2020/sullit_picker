// ignore_for_file: use_build_context_synchronously
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';

import '../../../../../../../../core/helpers/loading_helper.dart';
import 'register_imports.dart';

class RegisterController {
  late final LoginRegisterController loginRegisterCtr;

  // Register form controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Observable values
  final ObsValue<bool> passwordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> confirmPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<CountryCode> countryCodeObs =
      ObsValue<CountryCode>.withInit(getIt<CountryPickerHelper>().defaultCountry);
  ObsValue<File?> backIdFileObs = ObsValue<File?>.withInit(null);
  ObsValue<File?> idFileObs = ObsValue<File?>.withInit(null);
  ObsValue<File?> backLicenseFileObs = ObsValue<File?>.withInit(null);
  ObsValue<File?> licenseFileObs = ObsValue<File?>.withInit(null);

  final GlobalKey<CustomButtonState> registerLoadingButtonKey = GlobalKey<CustomButtonState>();

  int? phoneVerifyCode;
  int? emailVerifyCode;

  Future<void> pickIdLicenseFile(BuildContext context, ObsValue<File?> fileObs) async {
    var file = await getIt<AppFileService>().pickFile(context, allowMultiple: false, fileType: FileType.image);
    if (file != null) {
      fileObs.setValue(file.first);
      fileObs.refresh();
    }
  }

  Future<void> selectCountryCode(BuildContext context) async {
    CountryCode? selectedCountry = await getIt<CountryPickerHelper>().selectCountrySheet(context);
    if (selectedCountry != null) {
      countryCodeObs.setValue(selectedCountry);
      countryCodeObs.refresh();
    }
  }

  void onSelectWorkType(WorkTypeModel model) {
    List<WorkTypeModel> list = loginRegisterCtr.workTypesRequester.data!;
    if (model.selected!) {
      model.selected = false;
    } else {
      for (var item in list) {
        item.selected = false;
      }
      model.selected = true;
    }
    loginRegisterCtr.workTypesRequester.refresh();
  }

  void switchPasswordVisibility(ObsValue<bool> obs) {
    obs.setValue(!obs.getValue());
  }

  Future<void> verifyEmail(BuildContext context) async {
    if (emailController.text.validateEmail() != null) {
      AppSnackBar.showSimpleToast(msg: Translate.s.mailValidation);
      return;
    }
    var params = _verifyEmailParams();
    var result = await getIt<AuthRepositories>().verifyEmail(params);
    result.when(
      isSuccess: (data) {
        if (data != null) {
          AppSnackBar.showSuccessSnackBar(data);
          routeAndGetEmailVerifyCode(context);
        }
      },
      isError: (error) {},
    );
  }

  Future<void> verifyPhone(BuildContext context) async {
    bool validatePhone = phoneController.text.validateOnCode(countryCodeObs.getValue().dialCode) == null;
    if (!validatePhone || phoneController.text.isEmpty) {
      AppSnackBar.showSimpleToast(msg: Translate.s.phoneValidation, type: ToastType.error);
      return;
    }
    var params = _verifyPhoneParams();
    var result = await getIt<AuthRepositories>().verifyPhone(params);
    result.when(
      isSuccess: (data) {
        AppSnackBar.showSuccessSnackBar(data!);
        routeAndGetPhoneVerifyCode(context);
      },
      isError: (error) {},
    );
  }

  Future<void> routeAndGetPhoneVerifyCode(BuildContext context) async {
    var verifyCode = await AutoRouter.of(context).push(ActiveAccountPageRoute(
      emailOrPhone: '${countryCodeObs.getValue().dialCode}${phoneController.text}',
    ));
    if (verifyCode != null && verifyCode is String) {
      phoneVerifyCode = int.parse(verifyCode);
    }
  }

  Future<void> routeAndGetEmailVerifyCode(BuildContext context) async {
    var verifyCode = await AutoRouter.of(context).push(ActiveAccountPageRoute(emailOrPhone: emailController.text));
    if (verifyCode != null && verifyCode is String) {
      emailVerifyCode = int.parse(verifyCode);
    }
  }

  Future<void> callRegister(BuildContext context) async {
    var params = _registerParams();
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await getIt<AuthRepositories>().registerUser(params);
    result.when(
      isSuccess: (data) async {
        await getIt<UserServicesHelper>().updateUserData(context,data);
        AutoRouter.of(context).push(SubscriptionPageRoute(fromAuth: true));
      },
      isError: (error) {
        // AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: Translate.of(context).something_went_wrong));
      },
    );
    getIt<LoadingHelper>().dismissDialog();
  }

  void register(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (!allFilesUploaded(context)) {
        return;
      }
      if(!isWorkTypeSelected(context)){
        return ;
      }
      if(!isEmailAndPhoneVerified(context)){
        return ;
      }
      registerLoadingButtonKey.currentState?.animateForward();
      await Future.delayed(const Duration(seconds: 1));

      if(isFreeLance()) {
        AutoRouter.of(context).push(SupportedAreaPageRoute(fromProfile: false, registerParams: _registerParams()));
      }else{
        callRegister(context);
      }
      registerLoadingButtonKey.currentState?.animateReverse();
    }
  }


  bool isFreeLance(){
    return loginRegisterCtr.workTypesRequester.data!.firstWhere((element) => element.selected!).isFreelancer;
  }

  bool allFilesUploaded(BuildContext context) {
    if (idFileObs.getValue() == null) {
      AppSnackBar.showSimpleToast(msg: Translate.of(context).please_select_id_card_image);
      return false;
    }
    if (backIdFileObs.getValue() == null) {
      AppSnackBar.showSimpleToast(msg: Translate.of(context).please_select_back_id_card_image);
      return false;
    }
    if (licenseFileObs.getValue() == null) {
      AppSnackBar.showSimpleToast(msg: Translate.of(context).please_select_license_image);
      return false;
    }
    if (backLicenseFileObs.getValue() == null) {
      AppSnackBar.showSimpleToast(msg: Translate.of(context).please_select_back_license_image);
      return false;
    }
    return true;
  }

  bool isWorkTypeSelected(BuildContext context) {
    var isOneSelected = loginRegisterCtr.workTypesRequester.data!.any((element) => element.selected!);
    if(!isOneSelected){
      AppSnackBar.showSimpleToast(msg: Translate.of(context).please_define_work_type);
    }
    return isOneSelected;
  }

  bool isEmailAndPhoneVerified(BuildContext context){
    if(phoneVerifyCode==null){
      AppSnackBar.showSimpleToast(msg: Translate.of(context).please_verify_phone_number);
      return false;
    }
    if(emailVerifyCode==null){
      AppSnackBar.showSimpleToast(msg: Translate.of(context).please_verify_email);
      return false;
    }
    return true;
  }

  /// params
  VerifyParams _verifyPhoneParams() {
    return VerifyParams(
      code: countryCodeObs.getValue().dialCode,
      phone: phoneController.text,
    );
  }

  VerifyParams _verifyEmailParams() {
    return VerifyParams(email: emailController.text);
  }

  RegisterParams _registerParams() {
    var workTypes = loginRegisterCtr.workTypesRequester.data;
    var selectedType = workTypes!.firstWhere((element) => element.selected!);
    return RegisterParams(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      countryCode: countryCodeObs.getValue().dialCode,
      phoneVerificationCode: phoneVerifyCode!,
      emailVerificationCode: emailVerifyCode!,
      workType: selectedType.key,
      idImageFront: idFileObs.getValue()!,
      idImageBack: backIdFileObs.getValue()!,
      licenseImageFront: licenseFileObs.getValue()!,
      licenseImageBack: backLicenseFileObs.getValue()!,
      mapDesc: " ",
      password: passwordController.text,
      confirmPassword: passwordController.text,
    );
  }
}
