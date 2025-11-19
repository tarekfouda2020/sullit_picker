import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeviceIdHelper{
  Future<String?> getDeviceId() async {
    try {
      final messaging = FirebaseMessaging.instance;
      // if (Platform.isIOS) {
      //   String? apnsToken = await messaging.getAPNSToken();
      //   int retry = 0;
      //   const maxRetries = 20;
      //   while (apnsToken == null && retry < maxRetries) {
      //     await Future.delayed(const Duration(milliseconds: 500));
      //     apnsToken = await messaging.getAPNSToken();
      //     retry++;
      //     if (retry % 5 == 0) {
      //       log("⏳ Waiting for APNs token... (attempt $retry/$maxRetries)");
      //     }
      //   }
      //   if (apnsToken == null) {
      //     log("❌ APNs token still null after waiting ${maxRetries * 500}ms");
      //     log("💡 Troubleshooting steps:");
      //     log("   1. Check that Push Notifications capability is enabled in Xcode");
      //     log("   2. Verify entitlements file has aps-environment set");
      //     log("   3. Ensure app has notification permissions in Settings");
      //     log("   4. Make sure you're testing on a physical device (not simulator)");
      //     log("   5. Check that device is connected to internet");
      //   }
      // }

      final token = await messaging.getToken();
      return token;

    } catch (e) {
      log("❌ Error getting device token: $e ======== end error");
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