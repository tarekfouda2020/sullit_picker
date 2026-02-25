
import 'package:flutter_tdd/core/constants/local_stoage_keys.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_notification.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:permission_handler/permission_handler.dart';

import '../bloc/value_state_manager/value_state_manager_import.dart';

@lazySingleton
class NotifyMethodsHelper {

  final ObsValue<bool> refreshNotifyStatusObs = ObsValue<bool>.withInit(false);


  bool? orderDetailsOpened() {
    try {
      final router = getIt<AppRouter>();
      final topRoute = router.current;
     return (topRoute.name == OrderDetailsRouteName.name);
    } catch (e) {
     return null;
    }
  }

  bool? notInHomePage() {
    try {
      final router = getIt<AppRouter>();
      final topRoute = router.current;
      return (topRoute.name != HomePageRoute.name) ;
    } catch (e) {
      return null;
    }
  }


  Future<void> refreshNotificationStatus() async {
    var status = await Permission.notification.status;
    bool isGranted = status.isGranted || status.isProvisional;
    GlobalState.instance.set(GlobalStateKeys.notificationGranted, isGranted);
   refreshNotifyStatusObs.refresh();
   if(isGranted){
     getIt<GlobalNotification>().setupNotification();
   }
  }





}
