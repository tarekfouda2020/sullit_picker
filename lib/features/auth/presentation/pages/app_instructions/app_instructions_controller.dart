part of'app_instructions_imports.dart';

class AppInstructionsController{

  ObsValue<bool> checkboxObs = ObsValue<bool>.withInit(false);

  FreelancerInstructionsRequester freelancerInstructionsRequester = FreelancerInstructionsRequester();

  AppInstructionsController(){
    freelancerInstructionsRequester.request();
  }

  Future<void> onPressCheckbox(BuildContext context)async{
    var result = await getIt<AuthRepositories>().appInstructionsAgree();
    result.when(
      isSuccess: (data) {
        AppSnackBar.showSuccessSnackBar(data!);
        AutoRouter.of(context).push(SubscriptionPageRoute(fromAuth: true));
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: error.message));
      },
    );
  }

  void onPress(BuildContext context) {
    if (checkboxObs.getValue()) {
      onPressCheckbox(context);
    }else{
      AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: 'Please accept terms and conditions'));
    }
  }

}