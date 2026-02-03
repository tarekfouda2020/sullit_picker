import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tdd/core/helpers/app_state_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/orders_helper.dart';
import 'package:flutter_tdd/core/helpers/storage_helper.dart';
import 'package:flutter_tdd/features/notifications/data/enum/notification_type.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../features/auth/presentation/pages/login_view/login_view_imports.dart';
import 'global_context.dart';

@lazySingleton
class GlobalNotification {
  static final StreamController<Map<String, dynamic>>
      _onMessageStreamController = StreamController.broadcast();

  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static String soundName = "tips_alot";
  static RawResourceAndroidNotificationSound androidNotificationSound(
          {String? sound}) =>
      RawResourceAndroidNotificationSound(sound ?? soundName);

  static AndroidNotificationChannel get _orderChannel => AndroidNotificationChannel(
        'order_notifications_channel',
        'Order Notifications',
        description: 'This channel is used for new order notifications.',
        importance: Importance.max,
        sound: androidNotificationSound(),
        playSound: true,
      );

  static const AndroidNotificationChannel _generalChannel =
      AndroidNotificationChannel(
    'general_notifications_channel',
    'General Notifications',
    description: 'This channel is used for general notifications.',
    importance: Importance.max,
    playSound: true,
  );

  Future<void> setupNotification() async {
    log("🔔 Starting notification setup...");
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const initSettings = InitializationSettings(android: android, iOS: ios);

  await _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (details) {
        _cancelAllNotifications();
        flutterNotificationClick(details.payload);
      },
    );
    _cancelAllNotifications();

    await Firebase.initializeApp();


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

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      // log("✅ Notification permissions granted!");
     var token =  await messaging.getToken();
      log("FCM Token: $token   ");

      messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        // log("_____________________Message:$message");
        // log("_____________________Message android :${message.notification!.android}");
        // log("_____________________Message ios :${message.notification!.apple}");
        // log("_____________________Message android :${message.notification!.android?.channelId}");
        // log("_____________________Message android :${message.notification!.android?.sound}");
        // log("_____________________Message ios :${message.notification!.apple}");
        // log("_____________________Message ios sound :${message.notification!.apple?.sound}");
        // log("_____________________Message data:${message.data}");
        // log("___________________notification title:${message.notification?.title}");
        // log("___________________notification:${message.notification}");

        try {
          await _showLocalNotification(message);
          log("✅ Notification display completed");
        } catch (e) {
          log("❌ Error showing notification: $e");
        }
        if(AppStateHelper.instance.appInBackGround){
          getIt<OrdersHelper>().stopSound();
        }

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
        _cancelAllNotifications();
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
    }
  }

  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    log("📬 Handling a background message: ${message.messageId}");
    await Firebase.initializeApp();

    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const initSettings = InitializationSettings(android: android, iOS: ios);
    await flutterLocalNotificationsPlugin.initialize(initSettings);

    final title = message.data["title"] ?? "New Notification";
    final body = message.data["body"] ??
        message.data["message"] ??
        "You have a new notification";

    String notifyType = message.data["item_type"] ?? "";
    NotificationType type = NotificationType.notifyType(notifyType);

    AndroidNotificationChannel channel = type.isNewOrder ? _orderChannel : _generalChannel;

    String channelId = "";

    if (Platform.isAndroid && message.notification != null && type.isNewOrder) {
      channelId = message.notification!.android!.channelId ?? channel.id;
      soundName = message.notification!.android!.sound ?? channel.sound!.sound;
    }else{
      channelId = channel.id;
      soundName = channel.sound!.sound;
    }

    if (Platform.isIOS && message.notification != null && type.isNewOrder) {
      soundName = message.notification!.apple!.sound!.name!;
      // soundName = "tips_alot.caf";
    }

     final AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      channelId,
      channel.name,
      channelDescription: channel.description,
      priority: Priority.high,
      importance: Importance.max,
      shortcutId: DateTime.now().toIso8601String(),
      sound: androidNotificationSound(sound: soundName),
      playSound: true,
      additionalFlags: type.isNewOrder ? Int32List.fromList([4]) : null, // FLAG_INSISTENT
    );

    const DarwinNotificationDetails generalIos = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    final NotificationDetails platform = NotificationDetails(
        android: androidDetails,
        iOS: type.isNewOrder?newOrderIos(soundName):generalIos
        // iOS: newOrderIos(soundName)
    );

    await flutterLocalNotificationsPlugin.show(
      message.hashCode,
      title,
      body,
      platform,
      payload: json.encode(message.data),
    );

    if (Platform.isIOS && type.isNewOrder) {
      _scheduleRepeatNotificationsIOS(
        flutterLocalNotificationsPlugin,
        title,
        body,
        soundName,
        message.data,
      );
    }
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  static DarwinNotificationDetails  newOrderIos(String soundName) => DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound: soundName,
      interruptionLevel: InterruptionLevel.critical,
  );

  static Future<void> _scheduleRepeatNotificationsIOS(
    FlutterLocalNotificationsPlugin plugin,
    String title,
    String body,
    String sound,
    Map<String, dynamic> data,
  ) async {
    for (int i = 1; i <= 5; i++) {
      await plugin.zonedSchedule(
        1000 + i, // Repeat notification IDs starting from 1001
        title,
        body,
        tz.TZDateTime.now(tz.local).add(Duration(seconds: 30 * i)),
        NotificationDetails(iOS: newOrderIos(sound)),
        payload: json.encode(data),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }
  }

  static Future<void> _cancelAllNotifications() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) {
      return;
    }

    bool isAppOpened = AppStateHelper.instance.isAppOpened;
    String notifyType = message.data["item_type"] ?? "";
    NotificationType type = NotificationType.notifyType(notifyType);

    if (isAppOpened && type.isNewOrder) {
      return;
    }

    if (message.notification == null) {
      log("📨 Data-only message received, creating local notification");
      // Create notification from data payload
      final title = message.data["title"] ?? "New Notification";
      final body = message.data["body"] ??
          message.data["message"] ??
          "You have a new notification";

      const android = AndroidNotificationDetails(
        'general_notifications_channel',
        'General Notifications',
        channelDescription: 'This channel is used for general notifications.',
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
      );

      const ios = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      const platform = NotificationDetails(android: android, iOS: ios);

      await _flutterLocalNotificationsPlugin.show(
        message.hashCode,
        title,
        body,
        platform,
        payload: json.encode(message.data),
      );

      _onMessageStreamController.add(message.data);
      return;
    }

    AndroidNotificationChannel channel = type.isNewOrder ? _orderChannel : _generalChannel;

    String channelId = "";

    if (Platform.isAndroid && message.notification != null && type.isNewOrder) {
      channelId = message.notification!.android!.channelId ?? channel.id;
      soundName = message.notification!.android!.sound ?? channel.sound!.sound;
    }else{
      channelId = channel.id;
      soundName = channel.sound!.sound;
    }

    if (Platform.isIOS && message.notification != null) {
      soundName = message.notification!.apple!.sound!.name!;
      // soundName = "tips_alot.caf";
    }

    final AndroidNotificationDetails android = AndroidNotificationDetails(
      channelId,
      channel.name,
      channelDescription: channel.description,
      priority: Priority.high,
      importance: Importance.max,
      shortcutId: DateTime.now().toIso8601String(),
      sound: androidNotificationSound(sound: soundName),
      playSound: true,
      additionalFlags: type.isNewOrder ? Int32List.fromList([4]) : null, // FLAG_INSISTENT
    );

    const DarwinNotificationDetails generalIos = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    final NotificationDetails platform = NotificationDetails(
        android: android,
        iOS: type.isNewOrder ? newOrderIos(soundName) :generalIos
        // iOS: newOrderIos(soundName)
    );

    // Use message.hashCode as notification ID to prevent duplicates
    final notificationId = message.hashCode;
    final title = "${message.notification?.title}";
    final body = "${message.notification?.body}";

    await _flutterLocalNotificationsPlugin.show(
        notificationId, title, body, platform,
        payload: json.encode(message.data));

    if (Platform.isIOS && type.isNewOrder) {
      _scheduleRepeatNotificationsIOS(
        _flutterLocalNotificationsPlugin,
        title,
        body,
        soundName,
        message.data,
      );
    }

    log("✅ Local notification shown successfully!");
  }

  static void _handleNotificationResponse(String notifyType) {
    var type = NotificationType.notifyType(notifyType);
    // var notInOrderDetails = getIt<NotifyMethodsHelper>().notInOrderDetails() == true;
    // if (notInOrderDetails && (type.isNewOrder)) {
    if ((type.isNewOrder)) {
      getIt<OrdersHelper>().showNewOrderAlert();
    } else if (type.isOrderAccepted || type.isOrderCanceled) {
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
    _cancelAllNotifications();
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