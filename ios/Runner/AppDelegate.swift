import Flutter
import UIKit
import Firebase
import FirebaseMessaging
import UserNotifications

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Note: Firebase is configured in Dart (main.dart), so we don't call FirebaseApp.configure() here
    
    // Set up notification center delegate
    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self
      
      // Request notification permissions
      let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
      UNUserNotificationCenter.current().requestAuthorization(
        options: authOptions,
        completionHandler: { granted, error in
          if let error = error {
            print("Error requesting notification authorization: \(error.localizedDescription)")
          } else {
            print("Notification authorization granted: \(granted)")
          }
        }
      )
    } else {
      let settings: UIUserNotificationSettings =
        UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
      application.registerUserNotificationSettings(settings)
    }
    
    // Register for remote notifications
    // This is critical for APNs token generation
    application.registerForRemoteNotifications()
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  // Handle successful APNs token registration
  override func application(
    _ application: UIApplication,
    didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
  ) {
    // Set the APNs token for Firebase Messaging
    Messaging.messaging().apnsToken = deviceToken
    print("✅ APNs token registered successfully")
    super.application(application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
  }
  
  // Handle APNs token registration failure
  override func application(
    _ application: UIApplication,
    didFailToRegisterForRemoteNotificationsWithError error: Error
  ) {
    print("❌ Failed to register for remote notifications: \(error.localizedDescription)")
    super.application(application, didFailToRegisterForRemoteNotificationsWithError: error)
  }
  
  // Handle notification presentation when app is in foreground
  @available(iOS 10.0, *)
  override func userNotificationCenter(
    _ center: UNUserNotificationCenter,
    willPresent notification: UNNotification,
    withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void
  ) {
    let userInfo = notification.request.content.userInfo
    print("📱 ========== AppDelegate: Notification received in foreground ==========")
    print("📱 UserInfo: \(userInfo)")
    print("📱 Notification identifier: \(notification.request.identifier)")
    
    // Check if this is a Firebase notification
    if userInfo["gcm.message_id"] != nil || userInfo["google.c.a.e"] != nil {
      print("📱 This is a Firebase Cloud Messaging notification")
      // Let Firebase Messaging handle it first, then show it
      // Firebase will call onMessage in Dart, which will show the local notification
    }
    
    // Show notification even when app is in foreground
    // This ensures the notification appears even if Firebase doesn't handle it
    if #available(iOS 14.0, *) {
      completionHandler([[.banner, .badge, .sound]])
    } else {
      completionHandler([[.alert, .badge, .sound]])
    }
  }
  
  // Handle notification tap
  @available(iOS 10.0, *)
  override func userNotificationCenter(
    _ center: UNUserNotificationCenter,
    didReceive response: UNNotificationResponse,
    withCompletionHandler completionHandler: @escaping () -> Void
  ) {
    let userInfo = response.notification.request.content.userInfo
    print("👆 Notification tapped: \(userInfo)")
    completionHandler()
  }
}
