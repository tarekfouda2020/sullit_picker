import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/notify_methods_helper.dart';
import 'package:flutter_tdd/core/helpers/orders_helper.dart';
import 'package:flutter_tdd/core/helpers/storage_helper.dart';
import 'package:flutter_tdd/features/notifications/data/enum/notification_type.dart';
import 'package:injectable/injectable.dart';

import '../../features/auth/presentation/pages/login_view/login_view_imports.dart';
import 'global_context.dart';

@lazySingleton
class GlobalNotification {
  static final StreamController<Map<String, dynamic>> _onMessageStreamController =
  StreamController.broadcast();

  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  static FirebaseMessaging messaging = FirebaseMessaging.instance;

 Future<void> setupNotification()async{
    _flutterLocalNotificationsPlugin =FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios =DarwinInitializationSettings();
    const initSettings =InitializationSettings(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      // onDidReceiveBackgroundNotificationResponse:(details)=> flutterNotificationClick( details.payload),
      // onDidReceiveNotificationResponse: (details)=> flutterNotificationClick( details.payload),
    );
    await Firebase.initializeApp();
    final settings = await messaging.requestPermission(
        provisional: true,
      alert: true,
      badge: true,
      sound: true,
    );
    if(settings.authorizationStatus==AuthorizationStatus.authorized){
      messaging.getToken().then((token) {
        log("$token");
      });
      messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        // log("_____________________Message data:${message.data}");
        // log("_____________________notification:${message.notification?.title}");
        _showLocalNotification(message);
        _onMessageStreamController.add(message.data);


        var orderId = int.parse(message.data["item_type_id"]??"0");
        var notifyType = message.data["item_type"];


        if ( orderId == -1) {
          StorageHelper.instance.clearSavedData();
          // AutoRouter.of(context).push(const LoginRoute());
        }
        _handleNotificationResponse(notifyType);
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log('AonMessageOpenedApp event was published!');
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    }

  }

  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    log("Handling a background message: ${message.messageId}");
    await Firebase.initializeApp();
    // flutterNotificationClick(json.encode(message.data));
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;
    final android = AndroidNotificationDetails(
      "${DateTime.now()}",
      "Default",
      priority: Priority.high,
      importance: Importance.max,
      shortcutId: DateTime.now().toIso8601String(),
    );
    const ios = DarwinNotificationDetails();
    final platform = NotificationDetails(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.show(
        DateTime.now().microsecond, "${message.notification?.title}", "${message.notification?.body}", platform,
        payload: json.encode(message.data));
  }

  static void _handleNotificationResponse(String notifyType){
   var type = NotificationType.notifyType(notifyType);
   var notInOrderDetails = getIt<NotifyMethodsHelper>().notInOrderDetails();
   if(notInOrderDetails && (type.isNewOrder) ){
     getIt<OrdersHelper>().showNewOrderAlert();
   }else if(type.isOrderAccepted || type.isNewOrder){
     getIt<OrdersHelper>().getAllOrders();
   }
  }

  static void _whenNotificationClickedInBackground(String notifyType){
    var type = NotificationType.notifyType(notifyType);
    BuildContext context = getIt<GlobalContext>().context();
    if( type.isNewOrder ){
     AutoRouter.of(context).push(const HomePageRoute());
    }else {
      AutoRouter.of(context).push(const NotificationsPageRoute());
    }
  }

  static Future flutterNotificationClick(String? details) async {
    // log("==========>>>>>> when notification clicked $details details <<<<<<<<<<============");
    var message = json.decode(details??"");
    // log("==========>>>>>> message when click from out side $message details <<<<<<<<<<============");
    var notifyType = message["item_type"];
    _whenNotificationClickedInBackground(notifyType);

  }
}


/// message body
// {item_type_id: 31,
// item_type: order >> see NotificationType enum,
// body: "A new order with code #20250923-00312084 is available for you",
// title: "New order available",
// click_action: "FLUTTER_NOTIFICATION_CLICK"}