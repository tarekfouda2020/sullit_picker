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
  static final StreamController<Map<String, dynamic>>
      _onMessageStreamController = StreamController.broadcast();

  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  /// Android notification channel with custom sound
  /// Android notification channel for order notifications with tips_alot sound
  static const AndroidNotificationChannel _orderChannel =
      AndroidNotificationChannel(
    'order_notifications_channel',
    'Order Notifications',
    description: 'This channel is used for new order notifications.',
    importance: Importance.max,
    sound: RawResourceAndroidNotificationSound('tips_alot'),
    playSound: true,
  );

  /// Android notification channel for other notifications with bell_ring sound
  static const AndroidNotificationChannel _generalChannel =
      AndroidNotificationChannel(
    'general_notifications_channel',
    'General Notifications',
    description: 'This channel is used for general notifications.',
    importance: Importance.max,
    playSound: true,
  );

  Future<void> setupNotification() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios = DarwinInitializationSettings(
      defaultPresentAlert: true,
      defaultPresentSound: true,
    );
    const initSettings = InitializationSettings(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      // onDidReceiveBackgroundNotificationResponse:(details)=> flutterNotificationClick( details.payload),
      // onDidReceiveNotificationResponse: (details)=> flutterNotificationClick( details.payload),
    );
    // Firebase is already initialized in native code (iOS) and main.dart (Android)

    // Create the Android notification channels with custom sounds
    final androidImplementation =
        _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    await androidImplementation?.createNotificationChannel(_orderChannel);
    await androidImplementation?.createNotificationChannel(_generalChannel);

    final settings = await messaging.requestPermission(
      provisional: true,
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
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

      var orderId = int.parse(message.data["item_type_id"] ?? "0");
      var notifyType = message.data["item_type"];

        if (orderId == -1) {
          StorageHelper.instance.clearSavedData();
          // AutoRouter.of(context).push(const LoginRoute());
        }
        _handleNotificationResponse(notifyType);
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log('AonMessageOpenedApp event was published!');
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
    }
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    log("Handling a background message: ${message.messageId}");
    await Firebase.initializeApp();
    // flutterNotificationClick(json.encode(message.data));
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;

    // Determine the notification type
    String notifyType = message.data["item_type"] ?? "";
    NotificationType type = NotificationType.notifyType(notifyType);

    // Select the appropriate channel based on the type
    AndroidNotificationChannel channel =
        type.isNewOrder ? _orderChannel : _generalChannel;
    // message.data == {} ? _orderChannel : _generalChannel;

    final android = AndroidNotificationDetails(
      channel.id,
      channel.name,
      channelDescription: channel.description,
      priority: Priority.high,
      importance: Importance.max,
      shortcutId: DateTime.now().toIso8601String(),
      sound: channel.sound,
      playSound: true,
      enableVibration: type.isNewOrder,
    );

    const newOrderIos = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        sound: "tips_alot");

    const generalIos = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    final platform = NotificationDetails(
        android: android, iOS: type.isNewOrder ? newOrderIos : generalIos);
    _flutterLocalNotificationsPlugin.show(
        DateTime.now().microsecond,
        "${message.notification?.title}",
        "${message.notification?.body}",
        platform,
        payload: json.encode(message.data));
  }

  static void _handleNotificationResponse(String notifyType) {
    var type = NotificationType.notifyType(notifyType);
    var notInOrderDetails =
        getIt<NotifyMethodsHelper>().notInOrderDetails() == true;
    if (notInOrderDetails && (type.isNewOrder)) {
      getIt<OrdersHelper>().showNewOrderAlert();
    } else if (type.isOrderAccepted || type.isNewOrder) {
      getIt<OrdersHelper>().getAllOrders();
    }
  }

  static void _whenNotificationClickedInBackground(String notifyType) {
    var type = NotificationType.notifyType(notifyType);
    BuildContext context = getIt<GlobalContext>().context();
    if (type.isNewOrder) {
      AutoRouter.of(context).push(const HomePageRoute());
    } else {
      AutoRouter.of(context).push(const NotificationsPageRoute());
    }
  }

  static Future flutterNotificationClick(String? details) async {
    // log("==========>>>>>> when notification clicked $details details <<<<<<<<<<============");
    var message = json.decode(details ?? "");
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