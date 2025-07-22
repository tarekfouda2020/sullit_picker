import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'profile_page_imports.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';

class ProfilePageController {
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


} 