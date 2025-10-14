
import 'package:flutter_tdd/features/home/domain/entity/timer_entity.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

import 'home_imports.dart';

class HomeController {
  final ObsValue<bool> hasOrders = ObsValue<bool>.withInit(false);
   final ObsValue<bool> availableForOrdersObs = ObsValue<bool>.withInit(false);
   final ObsValue<TimerEntity> timerObs = ObsValue<TimerEntity>.withInit(TimerEntity());



  bool popOut = false;

  HomeController(){
    getUserData();
  }


  Future<void> initializeAvailableStatus(BuildContext context,{bool value = false}) async {
    bool? isAvailable = context.read<UserCubit>().state.model?.isAvailable;
    availableForOrdersObs.setValue(isAvailable ?? value);
    availableForOrdersObs.refresh();
  }

  void onPop() {
    if (popOut) {
      SystemNavigator.pop();
    } else {
      popOut = true;
      AppSnackBar.showSimpleToast(
          msg: Translate.s.back_again_to_exit,
          type: ToastType.info,
          color: AppColors.fixedColors.gray58,
          textColor: AppColors.fixedColors.white,
          gravity: ToastGravity.BOTTOM);
      Future.delayed(const Duration(seconds: 7)).then((value) => popOut = false);
    }
  }




  Future<void> navigateToSideMenu(BuildContext context)async {
    await AutoRouter.of(context).push(const ProfilePageRoute());
  }

  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }


  Future<void> updateAvailabilityStatus(BuildContext context) async {
    var userData = context.read<UserCubit>().state.model;
    var result = await getIt<HomeRepositories>().updateAvailability();
    result.when(
      isSuccess: (data) async {
        availableForOrdersObs.setValue(data!.data!.isAvailable);
        availableForOrdersObs.refresh();
        AppSnackBar.showSuccessSnackBar(data.msg ??"", forceShow: true);
        context.read<UserCubit>().onUpdateUserData(
            userData?.copyWith(
              isAvailable: data.data?.isAvailable ?? userData.isAvailable
            )
        );
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: error);
      },
    );
  }



  Future<void> getUserData() async{
     getIt<UserServicesHelper>().getUserData();
  }



  String getDigit(Duration duration, String unit, int index) {
    int value;
    switch (unit) {
      case 'days':
        value = duration.inDays;
        break;
      case 'hours':
        value = duration.inHours % 24;
        break;
      case 'minutes':
        value = duration.inMinutes % 60;
        break;
      case 'seconds':
        value = duration.inSeconds % 60;
        break;
      default:
        throw ArgumentError('Invalid time unit: $unit');
    }

    return value.toString().padLeft(2, '0')[index];
  }













}
