import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeviceIdHelper{
  Future<String?> getDeviceId() async {
    try {
      final messaging = FirebaseMessaging.instance;

      // 👉 iOS ONLY - Wait for APNS token before getting FCM token
      if (Platform.isIOS) {
        // 1. Request notification permission (required for APNs)
        NotificationSettings settings = await messaging.requestPermission(
          alert: true,
          badge: true,
          sound: true,
        );

        if (settings.authorizationStatus == AuthorizationStatus.denied) {
          log("User denied notification permission");
          return null;
        }

        // 2. Wait for APNs Token
        String? apnsToken = await messaging.getAPNSToken();
        int retry = 0;
        const maxRetries = 20;

        while (apnsToken == null && retry < maxRetries) {
          await Future.delayed(const Duration(milliseconds: 500));
          apnsToken = await messaging.getAPNSToken();
          retry++;
        }

        if (apnsToken == null) {
          log("APNs token still null after waiting.");
          return null;
        }

        log("✅ APNs token received: ${apnsToken.substring(0, 20)}...");
      }

      final token = await messaging.getToken();
      return token;

    } catch (e) {
      log("====>>>> error is $e ========");
      return null;
    }
  }



  Future<void> clearDeviceToken() async {
    try {
      await FirebaseMessaging.instance.deleteToken();
      log("✅ FCM token deleted successfully");
    } catch (e) {
      log("⚠️ Failed to delete FCM token: $e");
    }
  }


}