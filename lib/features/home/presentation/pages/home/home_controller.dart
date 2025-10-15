
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/timer_entity.dart';
import 'package:flutter_tdd/features/home/domain/requester/get_orders_requester.dart';

import 'home_imports.dart';

class HomeController {
  final ObsValue<bool> hasOrders = ObsValue<bool>.withInit(false);
   final ObsValue<bool> availableForOrdersObs = ObsValue<bool>.withInit(false);
   final ObsValue<TimerEntity> timerObs = ObsValue<TimerEntity>.withInit(TimerEntity());
  // final BaseBloc<OrdersModel?> ordersCubit = BaseBloc<OrdersModel?>();
  late GetOrdersRequester getOrdersRequester;

  HomeController(){
    getOrdersRequester = GetOrdersRequester();
    getOrdersRequester.request(fromRemote: false);
    getOrdersRequester.request();
  }



  bool popOut = false;




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


  void acceptOrder(BuildContext context) {
    hasOrders.setValue(true);
    Navigator.of(context).pop();
  }

  void rejectOrder(BuildContext context) {
    hasOrders.setValue(false);
    Navigator.of(context).pop();
  }

  void completeOrder(BuildContext context) {
    hasOrders.setValue(false);

    AppSnackBar.showSuccessSnackBar(Translate.of(context).order_completed_successfully);
  }

  Future<void> navigateToSideMenu(BuildContext context)async {
    await AutoRouter.of(context).push(const ProfilePageRoute());
  }

  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }



  void showReportProblemDialog(BuildContext context) {
    _showProblemReportedSuccess(context);
  }

  void _showProblemReportedSuccess(BuildContext context) {
    AppSnackBar.showSuccessSnackBar(Translate.of(context).problem_reported_successfully);
  }

  void getUserData() async{
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
