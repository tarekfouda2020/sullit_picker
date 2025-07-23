
import 'profile_page_imports.dart';


class ProfilePageController {


  final ObsValue<String> profileImageObs = ObsValue<String>.withInit("");
  File? pickedImage;

  Future<void> selectImage(BuildContext context) async{
    List<File>? result = await getIt<AppFileService>().pickFile(context,fileType: FileType.image,allowMultiple: false);
    if(result!=null){
      pickedImage = result.first;
      updateUserImage(context);
    }else{
      pickedImage = pickedImage;
    }
  }


  void navigateToChangePassword(BuildContext context) {
    AutoRouter.of(context).push(const ChangePasswordPageRoute());
  }
  
  void navigateToOrdersHistory(BuildContext context) {
    AutoRouter.of(context).push(const OrdersHistoryPageRoute());
  }
  
  void navigateToWallet(BuildContext context) {
    AutoRouter.of(context).push(const WalletPageRoute());
  }
  
  void navigateToStatistics(BuildContext context) {
    AutoRouter.of(context).push(const StatisticsPageRoute());
  }
  
  void navigateToContactUs(BuildContext context) {
    AutoRouter.of(context).push(const ContactUsPageRoute());
  }
  
  void navigateToTermsConditions(BuildContext context) {
    AutoRouter.of(context).push(const TermsConditionsPageRoute());
  }
  
  void navigateToPrivacyPolicy(BuildContext context) {
    AutoRouter.of(context).push(const PrivacyPolicyPageRoute());
  }
  
  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }
  
  Future<void> navigateToMySubscription(BuildContext context) async{
    bool hasSubscription = context.read<UserCubit>().state.model!.hasSubscription;
   if(hasSubscription){
     var result = await AutoRouter.of(context).push(const MySubscriptionPageRoute());
     if(result == true){
       getUserData();
     }
   }else{
     AutoRouter.of(context).push( SubscriptionPageRoute(fromAuth: false));
   }
  }
  
  Future<void> logout(BuildContext context) async {
    final result = await getIt<AuthRepositories>().logout();
    result.when(
      isSuccess: (msg) async{
        await getIt<UserServicesHelper>().clearCashAndRoute(context);
        AppSnackBar.showSimpleToast(
          msg: msg ?? "Logged out successfully",
          type: ToastType.success,
          gravity: ToastGravity.BOTTOM
        );
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(
          error: BaseError.unknown(msg: error.message),
        );
      },
    );
  }
  
  void goBack(BuildContext context) {
    AutoRouter.of(context).maybePop();
  }

  void routeToSupportedArea(BuildContext context) {
    AutoRouter.of(context).push( SupportedAreaPageRoute(fromProfile: true));
  }

  Future<void> getUserData()async{
  BuildContext context = getIt<GlobalContext>().context();
  var result = await getIt<HomeRepositories>().getProfile();
  result.when(
    isSuccess: (data) async{
      await getIt<UserServicesHelper>().updateUserData(context, data);
    },
    isError: (error) {},
  );
}


Future<void> updateUserImage(BuildContext context)async{
    var params = _updateParams();
    var result = await getIt<HomeRepositories>().updateProfileImage(params);
    result.when(
        isSuccess: (data) {
          getIt<UserServicesHelper>().updateUserData(context, data);
        },
        isError: (error) {},
    );
}


  UpdateProfileImageParams _updateParams(){
    return UpdateProfileImageParams(image: pickedImage!);
  }


} 