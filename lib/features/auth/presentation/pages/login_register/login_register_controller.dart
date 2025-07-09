import 'dart:developer';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/file_service.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:geolocator/geolocator.dart';

import '../login_register/login_register_imports.dart';


class LoginRegisterController {
  // Tab management
  final ObsValue<int> currentTabObs = ObsValue<int>.withInit(0);
  
  // Login form
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  
  // Register form
  final TextEditingController registerNameController = TextEditingController();
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPhoneController = TextEditingController();
  final TextEditingController registerPasswordController = TextEditingController();
  final TextEditingController registerConfirmPasswordController = TextEditingController();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  
  // obs
  final ObsValue<bool> loginPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> passwordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> confirmPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<List<WorkTypeModel>> workTypeListObs = ObsValue<List<WorkTypeModel>>.withInit([]);
  ObsValue<CountryCode> countryCodeObs = ObsValue<CountryCode>.withInit(
      const CountryCode(name: "United Arab Emirates", code: "AE", dialCode: "+966")
  );
  ObsValue<File?> idFileObs = ObsValue<File?>.withInit(null);
  ObsValue<File?> licenseFileObs = ObsValue<File?>.withInit(null);

  final GlobalKey<CustomButtonState> loadingButtonKey = GlobalKey<CustomButtonState>();
  final GlobalKey<CustomButtonState> registerLoadingButtonKey = GlobalKey<CustomButtonState>();



  final List<WorkTypeModel> workTypesList = [
    WorkTypeModel(type: WorkTypeEnum.oneStore,isSelected: true),
    WorkTypeModel(type: WorkTypeEnum.myStore),
    WorkTypeModel(type: WorkTypeEnum.freelancer),
  ];


  LoginRegisterController(){
    workTypeListObs.setValue(workTypesList);
  }


  String whileEnterPhone(){
    bool validateNUmber = registerPhoneController.text.validateOnCode(countryCodeObs.getValue().dialCode);
    if(registerPhoneController.text.isEmpty){
      return Translate.s.fillField;
    }else if(!validateNUmber){
      return Translate.s.phoneValidation;
    }
    return "";
  }




  Future<void> pickIdFile(BuildContext context)async{
    var file = await getIt<AppFileService>().pickFile(context,allowMultiple: false,fileType: FileType.image);
    if(file!=null){
      idFileObs.setValue(file.first);
      idFileObs.refresh();
    }
  }
  Future<void> pickLicenseFile(BuildContext context)async{
    var file = await getIt<AppFileService>().pickFile(context,allowMultiple: false,fileType: FileType.image);
    if(file!=null){
      licenseFileObs.setValue(file.first);
      licenseFileObs.refresh();
    }
  }


  Future<void> selectCountryCode(BuildContext context)async{
    // CountryCode? country = countryCodeObs.getValue();
    CountryCode? selectedCountry = await CountryPicker.selectCountrySheet(context);
    if(selectedCountry != null){
      countryCodeObs.setValue(selectedCountry);
      countryCodeObs.refresh();
    }
  }


  void onSelectWorkType(WorkTypeModel model) {
    var list = workTypeListObs.getValue();
    if(model.isSelected){
      model.isSelected = false;
    }else{
      for(var item in list){
        item.isSelected = false;
      }
      model.isSelected = true;
    }
    workTypeListObs.setValue(list);
    workTypeListObs.refresh();
  }
  
  void switchTab(int index) {
    currentTabObs.setValue(index);
  }


  void login(BuildContext context) async {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }
    loadingButtonKey.currentState?.animateForward();
    // Simulate API call with realistic delay
    await Future.delayed(const Duration(seconds: 2));

    // Success - Navigate to home
    loadingButtonKey.currentState?.animateReverse();
    AutoRouter.of(context).replaceAll([const HomePageRoute()]);
    // AppSnackBar.showSuccessSnackBar(Translate.of(context).login_successful);
    loadingButtonKey.currentState?.animateReverse();
  }
  
  void register(BuildContext context) async {
    // if (!registerFormKey.currentState!.validate()) {
    //   return;
    // }

    registerLoadingButtonKey.currentState?.animateForward();
    await Future.delayed(const Duration(seconds: 2));

    AutoRouter.of(context).push( SupportedAreaPageRoute(fromProfile: false));
    AppSnackBar.showSuccessSnackBar(Translate.of(context).registration_successful);
    registerLoadingButtonKey.currentState?.animateReverse();
  }
  
  void navigateToForgetPassword(BuildContext context) {
    AutoRouter.of(context).push(const ForgetPasswordPageRoute());
  }
  

  void switchPasswordVisibility(ObsValue<bool> obs) {
    obs.setValue(!obs.getValue());
  }



  Widget currentView(){
    switch(currentTabObs.getValue()){
      case 0: return LoginFormWidget(controller: this);
      case 1: return  RegisterFormWidget(controller: this);
      default: return LoginFormWidget(controller: this);
    }
  }
  
  void dispose() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
    registerNameController.dispose();
    registerEmailController.dispose();
    registerPhoneController.dispose();
    registerPasswordController.dispose();
    registerConfirmPasswordController.dispose();
  }
} 