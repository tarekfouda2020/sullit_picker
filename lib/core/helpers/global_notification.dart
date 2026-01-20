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
    log("🔔 Starting notification setup...");
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    // iOS initialization settings with proper permission requests
    const ios = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const initSettings = InitializationSettings(android: android, iOS: ios);
    
    log("🔔 Initializing FlutterLocalNotificationsPlugin...");
    final initialized = await _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (details) {
        log("🔔 Notification tapped: ${details.payload}");
        flutterNotificationClick(details.payload);
      },
    );
    log("🔔 FlutterLocalNotificationsPlugin initialized: $initialized");
    
    await Firebase.initializeApp();
    log("🔔 Firebase initialized");

    // Create the Android notification channels with custom sounds
    final androidImplementation =
    _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

    await androidImplementation?.createNotificationChannel(_orderChannel);
    await androidImplementation?.createNotificationChannel(_generalChannel);

    final settings = await messaging.requestPermission(
      provisional: true,
      alert: true,
      badge: true,
      sound: true,
    );
    
    log("🔔 Notification permission status: ${settings.authorizationStatus}");
    log("🔔 Alert: ${settings.alert}, Badge: ${settings.badge}, Sound: ${settings.sound}");
    log("🔔 Provisional: ${settings.providesAppNotificationSettings}, Announcement: ${settings.announcement}");
    
    // Check for both authorized and provisional status
    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      log("✅ Notification permissions granted!");
      final token = await messaging.getToken();
      log("FCM Token: $token");
      log("📋 Copy this token to send test notifications from Firebase Console");
      

      // Check for initial notification (when app opened from terminated state)
      RemoteMessage? initialMessage = await messaging.getInitialMessage();
      if (initialMessage != null) {
        log("📬 Initial notification received: ${initialMessage.data}");
        flutterNotificationClick(json.encode(initialMessage.data));
      } else {
        log("ℹ️ No initial notification (app was not opened from notification)");
      }
      
      // Enable foreground notification presentation for iOS
      // When set to true, Firebase will automatically show notifications
      // We'll also manually show them to ensure they appear
      messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
      log("✅ Foreground notification presentation options set");
      log("✅ Setting up Firebase Messaging listeners...");
      
      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        try {
          await _showLocalNotification(message);
          log("✅ Notification display completed");
        } catch (e) {
          log("❌ Error showing notification: $e");
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
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);

    }
  }


  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    log("📬 Handling a background message: ${message.messageId}");
    await Firebase.initializeApp();
    
    // Show notification for background messages
    // Note: This is a static method, so we need to create a new instance
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    
    // Initialize if needed (this should already be done, but just in case)
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const initSettings = InitializationSettings(android: android, iOS: ios);
    await flutterLocalNotificationsPlugin.initialize(initSettings);
    
    // Show the notification
    if (message.notification != null) {
      const androidDetails = AndroidNotificationDetails(
        'order_notifications_channel',
        'Order Notifications',
        channelDescription: 'This channel is used for new order notifications.',
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
      );
      
      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );
      
      const platformChannelSpecifics = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );
      
      await flutterLocalNotificationsPlugin.show(
        message.hashCode,
        message.notification?.title ?? 'Notification',
        message.notification?.body ?? '',
        platformChannelSpecifics,
        payload: json.encode(message.data),
      );
    }
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) {
      return;
    }

    if (message.notification == null) {
      log("📨 Data-only message received, creating local notification");
      // Create notification from data payload
      final title = message.data["title"] ?? "New Notification";
      final body = message.data["body"] ?? message.data["message"] ?? "You have a new notification";
      
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
        DateTime.now().microsecond,
        title,
        body,
        platform,
        payload: json.encode(message.data),
      );
      
      _onMessageStreamController.add(message.data);
      return;
    }

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
    );

    const DarwinNotificationDetails newOrderIos = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        sound: "tips_alot"
    );

    const DarwinNotificationDetails generalIos = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    final NotificationDetails platform = NotificationDetails(
        android: android,
        iOS: type.isNewOrder ? newOrderIos : generalIos
    );
    
    final notificationId = DateTime.now().microsecond;
    final title = "${message.notification?.title}";
    final body = "${message.notification?.body}";
    
    log("🔔 Showing local notification:");
    log("🔔   ID: $notificationId");
    log("🔔   Title: $title");
    log("🔔   Body: $body");
    log("🔔   Type: ${type.isNewOrder ? 'New Order' : 'General'}");
    
    await _flutterLocalNotificationsPlugin.show(
        notificationId,
        title,
        body,
        platform,
        payload: json.encode(message.data));
    
    log("✅ Local notification shown successfully!");
  }

  static void _handleNotificationResponse(String notifyType) {
    var type = NotificationType.notifyType(notifyType);
    var notInOrderDetails = getIt<NotifyMethodsHelper>().notInOrderDetails() == true;
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